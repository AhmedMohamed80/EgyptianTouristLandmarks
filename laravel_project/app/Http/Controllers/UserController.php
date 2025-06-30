<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Validator;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Tymon\JWTAuth\Facades\JWTAuth;
use Illuminate\Support\Str;
use Tymon\JWTAuth\Exceptions\JWTException;
class UserController extends Controller
{

    public function testToken(Request $request)
    {
    
        return response()->json([
            'header_token' => $request->header('Authorization')
        ]);
    
    
    }

    public function _construct()
    {
        $this->middleware('auth:api', ['except' => ['login', 'register']]);
    }

    public function register(Request $request)
    {
        try{
            $validator = Validator::make($request->all(),[
                'name'=>'required',
                'email'=> 'required|string|email|unique:users',
                'phone'=> 'required',
                'password'=> 'required|string|confirmed|min:6',
                'address'=>"nullable|string",
                ]);
                if ($validator->fails()) {
                    return response()->json([
                        'message' => 'faild', 
                        'errors' => $validator->errors()   
                    ], 400);
                }
                
                $User = User::create([
                    'name' => $request->name,
                    'email' => $request->email,
                    'phone' => $request->phone,
                    'address' => $request->address,
                    'password' => bcrypt($request->password),
                ]);
                if (!$token = auth('api')->attempt($validator->validated())) {
                    return response()->json([
                        'message' => 'failed'
                    ], 401);
                }
                return response()->json([
                'message'=> 'successfull',
                $this->createNewToken($token)
    
                ],201);
            } catch (\Exception $e) {
                return response()->json(['error' => 'faild :' . $e->getMessage()], 500);
            }
        }   
    
    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required|string|min:6'
        ]);
    
        if ($validator->fails()) {
            return response()->json([
                'message' => 'Email or password is incorrect',
            ], 400);
        }
    
        if (!$token = auth('api')->attempt($validator->validated())) {
            return response()->json([
                'message' => 'Email or password is incorrect'
            ], 401);
        }
    
        return $this->createNewToken($token);
    }
    
    public function createNewToken($token)
    {
        return response()->json([
            'message' => 'successful',
            'access_token' => $token,
        ]);
    }
    
    public function profile()
    {
        try {
            $payload = JWTAuth::parseToken()->getPayload();
            return response()->json(['payload' => $payload]);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 401);
        }
    }   
    

    public function uploadProfileImage(Request $request)
    {
        try {
            if (!$request->hasFile('profile_image')) {
                return response()->json(['error' => 'No profile image uploaded.'], 400);
            }
    
            $validator = Validator::make($request->all(), [
                'profile_image' => 'image|mimes:jpeg,png,jpg,gif|max:10240',
            ]);
    
            if ($validator->fails()) {
                return response()->json(['error' => $validator->errors()], 400);
            }
    
            $token = JWTAuth::getToken();
            if (!$token) {
                return response()->json(['error' => 'Unauthorized - Token not found'], 401);
            }
    
            $payload = JWTAuth::parseToken()->getPayload();
            $email = $payload->get('email');
    
            $User = User::where('email', $email)->first();
    
            if (!$User) {
                return response()->json(['error' => 'User not found'], 404);
            }
    
            $path = $_SERVER['DOCUMENT_ROOT'] . '/image/User';
    
            // حذف الصورة القديمة إن وجدت
            if ($User->profile_image) {
                $oldImagePath = parse_url($User->profile_image, PHP_URL_PATH);
                $fullOldPath = $_SERVER['DOCUMENT_ROOT'] . $oldImagePath;
    
                if (file_exists($fullOldPath)) {
                    unlink($fullOldPath);
                }
            }
    
            // إنشاء مجلد إن لم يكن موجود
            if (!file_exists($path)) {
                mkdir($path, 0777, true);
            }
    
            // تخزين الصورة الجديدة بنفس نظام store_new_item
            $file = $request->file('profile_image');
            $extension = $file->getClientOriginalExtension();
            $file_name = time() . rand(1000, 9999) . '.' . $extension;
            $file->move($path, $file_name);
    
            // تخزين الرابط في قاعدة البيانات
            $User->profile_image = asset('image/User/' . $file_name);
            $User->save();
    
            return response()->json([
                'message' => 'Profile image updated successfully',
                'profile_image' => $User->profile_image,
            ], 200);
    
        } catch (\Exception $e) {
            return response()->json(['error' => 'Failed: ' . $e->getMessage()], 500);
        }
    }


    public function updatePassword(Request $request)
    {
        try{
            $user = Auth::user();
            if (!$user) {
                return response()->json(['error' => 'Unauthorized'], 401);
            }
            $request->validate([
                'current_password' => 'required',
                'new_password' => 'required|min:6|confirmed',
            ]);

            $User = Auth::User(); // الحصول على المستخدم المسجل حاليًا

            // يسشوف كلمة المرور الحالية صح ولا لا
            if (!Hash::check($request->current_password, $User->password)) {
                return response()->json(['message' => 'current password un correct'], 400);
            }

            // تحديث كلمة المرور
            $User->password = Hash::make($request->new_password);
            $User->save();

            return response()->json(['message' => 'successful']);


        } catch (\Exception $e) {
            return response()->json(['error' => 'faild :' . $e->getMessage()], 500);
        }
    }
}
