<?php
namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\DB;
use Tymon\JWTAuth\Facades\JWTAuth;
use Carbon\Carbon;

class ForgotPasswordController extends Controller
{
    
    public function sendResetCode(Request $request)
    {
        try{
            // التحقق من صحة البيانات المدخلة
            $request->validate([
                'email' => 'required|email|exists:users,email'
            ], [
                'email.exists' => 'Email not found'
            ]);
    
        
            // توليد كود عشوائي مكون من 6 أرقام
            $code = rand(100000, 999999);
            $email = $request->email; 
        
            // جلب اسم المستخدم من قاعدة البيانات
            $User = User::where('email', $email)->first();
        
            // حفظ الكود في قاعدة البيانات مع تحديثه إذا كان موجودًا مسبقًا
            DB::table('password_reset_tokens')->updateOrInsert(
                ['email' => $email],
                ['token' => (string) $code, 'created_at' => Carbon::now()]
            );
        
            // إرسال الكود عبر البريد الإلكتروني
            try {
                Mail::send('emails.passwordReset', [
                    'name' => $User->name, // تمرير اسم المستخدم إلى البريد الإلكتروني
                    'code' => $code
                ], function ($message) use ($email) {
                    $message->to($email); 
                    $message->subject('your password reset code ');
                });
        
                // رسالة النجاح
                return response()->json([
                    'message' => 'successful'
                ]);
        
            } catch (\Exception $e) {
                // رسالة الخطأ إذا فشل إرسال البريد
                return response()->json(['error' => 'faild :' . $e->getMessage()], 500);
            }
            
        } catch (\Exception $e) {
            // رسالة الخطأ إذا فشل إرسال البريد
            return response()->json(['message' =>  $e->getMessage()], 200);
        }
    }
    

    
    //التحقق من كود إعادة تعيين كلمة المرور
    public function verifyResetCode(Request $request)
    {
        //بيتاكد من الداتا الي بتدخله 
        $request->validate([
            'email' => 'required|email|exists:users,email',
            'code' => 'required|digits:6',
        ]);
        
        //بيشوف الكود موجود في الداتا بيز ولا لا 
        $reset = DB::table('password_reset_tokens')
            ->where('email', $request->email)
            ->where('token', (string) $request->code) 
            ->first();
    
        if (!$reset) {
            //لو الكود غير موجود أو غلط
            return response()->json(['message' => 'code is not correct'], 200);
        }
    
        // لو الكود صحيح وموجود في قاعدة الداتا بيز
        return response()->json(['message' => 'success']);
    }
    

    
    public function resetPassword(Request $request)
    {   
        try{
            //بيتاكد من الداتا الي بتدخله 
            $request->validate([
                'email' => 'required|email|exists:users,email',
                'password' => 'required|min:6|confirmed',
            ]);
      
    
            //بيشوف الكود واليميل موجود في الداتا بيز ولا لا 
            $reset = DB::table('password_reset_tokens')
            ->where('email', $request->email)
            ->where('created_at', '>=', Carbon::now()->subMinutes(10))
            ->first();
    
    
            if (!$reset) {
                //لو الداتا غير موجود أو غلط
                return response()->json(['message' => 'faild'], 400);
            }
    
            $user = User::where('email', $request->email)->first();
            $user->password = Hash::make($request->password);
            $user->save();
    
            DB::table('password_reset_tokens')->where('email', $request->email)->delete();
    
            return response()->json(['message' => 'success']);
        } catch (\Exception $e) {
            // رسالة الخطأ إذا فشل إرسال البريد
            return response()->json(['message' =>  $e->getMessage()], 400);
        }
    }
    
    
    
    public function sendUpdateCode(Request $request)
    {
        $request->validate([
            'email' => 'required|email|exists:users,email'
        ]);
    
        $code = rand(100000, 999999);
        $email = $request->email;
    
        $user = User::where('email', $email)->first();
    
        DB::table('password_reset_tokens')->updateOrInsert(
            ['email' => $email],
            ['token' => (string) $code, 'created_at' => Carbon::now()]
        );
    
        try {
            Mail::send('emails.updateCode', [
                'name' => $user->name,
                'code' => $code
            ], function ($message) use ($email) {
                $message->to($email);
                $message->subject('Your code to update profile');
            });
    
            return response()->json(['message' => 'Code sent successfully']);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Failed to send email: ' . $e->getMessage()], 500);
        }
    }
    
    

public function confirmUpdate(Request $request)
{
    $request->validate([
        'email' => 'required|email|exists:users,email',
        'code' => 'required|digits:6',
        'name' => 'sometimes|string',
        'phone' => 'sometimes|string',
        'address' => 'sometimes|string',
        'profile_image' => 'sometimes|image|mimes:jpeg,png,jpg|max:2048',
    ]);

    $reset = DB::table('password_reset_tokens')
        ->where('email', $request->email)
        ->where('token', (string) $request->code)
        ->where('created_at', '>=', Carbon::now()->subMinutes(10)) // كود صالح لمدة 10 دقائق
        ->first();

    if (!$reset) {
        return response()->json(['message' => 'Invalid or expired code'], 400);
    }

    $user = User::where('email', $request->email)->first();

    if ($request->has('name')) $user->name = $request->name;
    if ($request->has('phone')) $user->phone = $request->phone;
    if ($request->has('address')) $user->address = $request->address;

    if ($request->hasFile('profile_image')) {
        $file = $request->file('profile_image');
        $filename = time() . '.' . $file->getClientOriginalExtension();
    
        // مسار التخزين خارج مجلد Laravel في public_html
        $destinationPath = base_path('../public_html/image/User');
    
        if (!file_exists($destinationPath)) {
            mkdir($destinationPath, 0777, true);
        }
    
        // حذف الصورة القديمة إذا كانت موجودة
        if ($user->profile_image) {
            $oldImagePath = base_path('../public_html/image/User/' . basename($user->profile_image));
            if (file_exists($oldImagePath)) {
                unlink($oldImagePath);
            }
        }
    
        // نقل الصورة الجديدة
        $file->move($destinationPath, $filename);
    
        // تخزين رابط الصورة
        $user->profile_image = url('../image/User/' . $filename);
    }


    $user->save();

    // حذف الكود من جدول reset
    DB::table('password_reset_tokens')->where('email', $request->email)->delete();

    // إنشاء access token
    $token = JWTAuth::fromUser($user);

    return response()->json([
        'message' => 'successful',
        'token' => $token,
    ]);
}


}
