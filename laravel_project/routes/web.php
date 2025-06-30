<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\GoogleAuthController;
use App\Http\Controllers\StripePaymentController;

Route::get('/stripe', [StripePaymentController::class, 'stripe']);
Route::post('/stripe', [StripePaymentController::class, 'stripePost'])->name('stripe.post');

Route::get('/', function () {
  $content = file_get_contents('/home/u760115461/domains/pharaohslegacy.cloud/public_html/index.html');
    return response($content)->header('Content-Type', 'text/html');
    
});

// في web.php فقط


Route::get('/auth/google', [GoogleAuthController::class, 'redirectToGoogle']);
Route::get('/auth/google/callback', [GoogleAuthController::class, 'handleGoogleCallback']);
