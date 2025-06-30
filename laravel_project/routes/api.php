<?php

use GuzzleHttp\Middleware;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\Auth\GoogleAuthController;
use App\Http\Controllers\StoryController;
use App\Http\Controllers\ReviewController;
use App\Http\Controllers\TripController;
use App\Http\Controllers\ForgotPasswordController;
use App\Http\Controllers\ResturantController;
use App\Http\Controllers\AirportController;
use App\Http\Controllers\LandmarkController;
use App\Http\Controllers\HotelController;
use App\Http\Controllers\FavoriteListController;
use App\Http\Controllers\BookingController;
use App\Http\Controllers\Shoping_centerController;
use App\Http\Controllers\StripePaymentController;
use App\Http\Controllers\VertualImageController;
use Tymon\JWTAuth\Facades\JWTAuth;
use Tymon\JWTAuth\Facades\JWTFactory;
use Tymon\JWTAuth\Exceptions\JWTException;
use Tymon\JWTAuth\Contracts\JWTSubject;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');



Route::group(['Middleware'=>'auth:api','prefix'=>'auth' ],function($router){
    Route::post('/register',[UserController::class,'register']);
    Route::post('/login',[UserController::class,'login']);
    Route::get('/profile',[UserController::class,'profile']);
    Route::post('/logoout',[UserController::class,'logout']);
    Route::post('/updatePassword',[UserController::class,'updatePassword']);
    Route::post('uploadProfileImage',action: [UserController::class,'uploadProfileImage']);
    //Route::post('/update-profile', [UserController::class, 'updateProfile']);

});


Route::post('/sendUpdateCode', [ForgotPasswordController::class, 'sendUpdateCode']);
Route::post('/confirmUpdate', [ForgotPasswordController::class, 'confirmUpdate']);


Route::group(['prefix'=> 'stories'],function($router){
    Route::post('add_story',[StoryController::class, 'add_story']);
    Route::get('/user-stories/{user_id}', [StoryController::class, 'getUserStories']);
    Route::get('get_all_stories', [StoryController::class, 'get_All_Stories']);
    Route::post('update_story/{id}', [StoryController::class, 'update_story']);
    Route::post('delete_story/{id}', [StoryController::class, 'delete_story']);

});



Route::get('/Display_favorites', [FavoriteListController::class, 'Display_favorites']);
Route::post('/Add_favorites', [FavoriteListController::class, 'Add_favorites']);
Route::post('/Delete_an_favorites/{item_id}', [FavoriteListController::class, 'Delete_an_favorites']);
Route::get('/favorites/user/{user_id}', [FavoriteListController::class, 'getUserFavorites']);


Route::group(['prefix'=> 'password'],function($router){
    Route::post('/forgot-password', [ForgotPasswordController::class, 'sendResetCode']);
    Route::post('/verify-reset-code', [ForgotPasswordController::class, 'verifyResetCode']);
    Route::post('/reset-password', [ForgotPasswordController::class, 'resetPassword']);
    });

Route::group(['prefix'=> 'resturant'],function($router){
    Route::post('store_new_item',[ResturantController::class, 'store_new_item']);
    Route::get('show_specific_item/{id}', [ResturantController::class, 'show_specific_item']);
    Route::get('Display_all_item', [ResturantController::class, 'Display_all_item']);
    Route::put('update_an_item/{id}', [ResturantController::class, 'update_an_item']);
    Route::post('Delete_an_item/{id}', [ResturantController::class, 'Delete_an_item']);

});
   
Route::group(['prefix'=> 'Landmark'],function($router){
    Route::post('store_new_item',[LandmarkController::class, 'store_new_item']);
    Route::get('show_specific_item/{id}', [LandmarkController::class, 'show_specific_item']);
    Route::get('Display_all_item', [LandmarkController::class, 'Display_all_item']);
    Route::put('update_an_item/{id}', [LandmarkController::class, 'update_an_item']);
    Route::post('Delete_an_item/{id}', [LandmarkController::class, 'Delete_an_item']);

});

Route::group(['prefix'=> 'airport'],function($router){
    Route::post('store_new_item',[AirportController::class, 'store_new_item']);
    Route::get('show_specific_item/{id}', [AirportController::class, 'show_specific_item']);
    Route::get('Display_all_item', [AirportController::class, 'Display_all_item']);
    Route::put('update_an_item/{id}', [AirportController::class, 'update_an_item']);
    Route::post('Delete_an_item/{id}', [AirportController::class, 'Delete_an_item']);

});

Route::group(['prefix'=> 'hotel'],function($router){
    Route::post('store_new_item',[HotelController::class, 'store_new_item']);
    Route::get('show_specific_item/{id}', [HotelController::class, 'show_specific_item']);
    Route::get('Display_all_item', [HotelController::class, 'Display_all_item']);
    Route::put('update_an_item/{id}', [HotelController::class, 'update_an_item']);
    Route::post('Delete_an_item/{id}', [HotelController::class, 'Delete_an_item']);

});

Route::group(['prefix'=> 'shoping_center'],function($router){
    Route::post('store_new_item',[Shoping_centerController::class, 'store_new_item']);
    Route::get('show_specific_item/{id}', [Shoping_centerController::class, 'show_specific_item']);
    Route::get('Display_all_item', [Shoping_centerController::class, 'Display_all_item']);
    Route::put('update_an_item/{id}', [Shoping_centerController::class, 'update_an_item']);
    Route::post('Delete_an_item/{id}', [Shoping_centerController::class, 'Delete_an_item']);

});

Route::group(['prefix'=> 'Review'],function($router){
    Route::post('store_new_review',[ReviewController::class, 'store_new_review']);
    Route::get('show_item_Reviews/{id}', [ReviewController::class, 'show_item_Reviews']);
    Route::get('Display_all_Review', [ReviewController::class, 'Display_all_Review']);
    Route::put('update_an_Review/{id}', [ReviewController::class, 'update_an_Review']);
    Route::post('Delete_an_Review/{id}', [ReviewController::class, 'Delete_an_Review']);


    Route::get('topRatedItems', [ReviewController::class, 'topRatedItems']);
    Route::get('topRatedLandmarks', [ReviewController::class, 'topRatedLandmarks']);
    Route::get('topRatedHotels', [ReviewController::class, 'topRatedHotels']);

});


Route::group(['prefix'=> 'Trip'],function($router){
    Route::post('store_new_trip',[TripController::class, 'store_new_trip']);
    Route::get('show_specific_trip/{id}', [TripController::class, 'show_specific_trip']);
    Route::get('Display_all_trip', [TripController::class, 'Display_all_trip']);
    Route::put('update_an_trip/{id}', [TripController::class, 'update_an_trip']);
    Route::post('update_an_bayment_bersent/{id}', [TripController::class, 'update_an_bayment_bersent']);
    Route::post('Delete_an_trip/{id}', [TripController::class, 'Delete_an_trip']);

});


Route::get('/vertual-images', [VertualImageController::class, 'index']);
Route::post('/vertual-images', [VertualImageController::class, 'store']);
Route::post('/Delete_an_vertual_images/{id}', [VertualImageController::class, 'Delete_an_vertual_images']);


Route::post('/book-trip', [StripePaymentController::class, 'bookTrip']);
Route::post('/webhook/stripe', [StripePaymentController::class, 'handleWebhook']);
Route::get('/success', [StripePaymentController::class, 'checkoutSuccess']);
Route::get('/cancel', [StripePaymentController::class, 'checkoutCancel']);


Route::get('bookings/{user_id}', [BookingController::class, 'getBookingsByUser']);




Route::prefix('auth')->group(function () {
    Route::get('/google', [GoogleAuthController::class, 'redirectToGoogle']);
    Route::get('/google/callback', [GoogleAuthController::class, 'handleGoogleCallback']);
    Route::post('/logout', [GoogleAuthController::class, 'logout']);
});






