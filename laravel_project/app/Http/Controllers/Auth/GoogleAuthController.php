<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Laravel\Socialite\Facades\Socialite;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Tymon\JWTAuth\Facades\JWTAuth;
use Illuminate\Support\Facades\Http;

class GoogleAuthController extends Controller
{
    public function redirectToGoogle()
    {
        return Socialite::driver('google')
            ->with(['prompt' => 'consent select_account', 'access_type' => 'online'])
            ->redirect();
    }



public function handleGoogleCallback()
{
    try {
        $googleUser = Socialite::driver('google')->stateless()->user();
        $avatarUrl = $googleUser->getAvatar();

        // هل المستخدم موجود؟
        $user = User::where('email', $googleUser->getEmail())->first();

        if (!$user) {
            // تحميل الصورة
            $imageContents = file_get_contents($avatarUrl);
            $imageName = time() . '.jpg';

            // المسار الحقيقي لحفظ الصورة داخل public_html
            $savePath = base_path('../public_html/image/users');
            if (!file_exists($savePath)) {
                mkdir($savePath, 0755, true);
            }

            $imageFullPath = $savePath . '/' . $imageName;
            file_put_contents($imageFullPath, $imageContents);

            // توليد رابط الصورة (URL كامل)
            $imageUrl = 'https://pharaohslegacy.cloud/image/users/' . $imageName;

            // إنشاء مستخدم جديد
            $user = User::create([
                'name' => $googleUser->getName(),
                'email' => $googleUser->getEmail(),
                'password' => Hash::make(uniqid()), 
                'google_token' => $googleUser->token,
                'profile_image' => $imageUrl, // تخزين URL للصورة
            ]);
        }

        // إنشاء توكن JWT
        $token = JWTAuth::fromUser($user);

        return response()->view('google-success', ['Token' => $token]);

    } catch (\Exception $e) {
        return response()->json(['error' => 'faild: ' . $e->getMessage()], 500);
    }
}

    

    public function logout(Request $request)
    {
        try {
            $token = $request->bearerToken();

            if (!$token) {
                return response()->json(['error' => 'token not found'], 401);
            }

            JWTAuth::setToken($token)->invalidate();

            return response()->json(['message' => 'successful']);
        } catch (\Exception $e) {
            return response()->json(['error' => 'faild: ' . $e->getMessage()], 500);
        }
    }
}
