<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Controllers;
use App\Http\Controllers\auth\RegisterController;
use App\Http\Controllers\booksController;
use App\Http\Controllers\userController;
//use Illuminate\Support\Facades\Password;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//    dd('not working');
//     //return user;
// });

Route::controller(RegisterController::class)->group(function(){
    Route::match(['GET', 'POST'], 'register',  [RegisterController::class, 'Register'])->name('register');
    Route::post('login',  [RegisterController::class, 'login']);
    Route::get('logout',  [RegisterController::class, 'logout']);
    Route::post('resetpassword',[RegisterController::class, 'resetPassword'])->name('resetpassword');
   
});

//

Route::middleware('auth:sanctum')->group(function() {
Route::get("/user",  [userController::class, 'user']);
Route::get('/getLanguages', [booksController::class, 'getlanguage']);
Route::post('/createLanguages', [booksController::class, 'createlanguage']);
Route::get('getsubscriptions', [userController::class, 'get_subscriptions'])->name('getsubscriptions');
Route::get('/getMediaCategory', [booksController::class, 'getBookCategory']);
Route::post('/createsubscription', [userController::class, 'subscription']);
Route::post('/uploadbook', [booksController::class, 'submitBook']);
Route::post('/transaction', [booksController::class, 'submittransaction']);
Route::get('/allusertransaction', [userController::class, 'authenticatedUserTransaction']);
Route::post('/userSubscription', [userController::class, 'subscribe']);
Route::post('/languagebasedbooks', [booksController::class, 'getLanguageBasedBooks']);
Route::post('updateprofile', [userController::class, 'profileUpdate'])->name('updateprofile');
Route::post('verifyStreamDuration', [booksController::class, 'verifyStream'])->name('verifyStreamDuration');
Route::post('updatebookRating', [booksController::class, 'bookRating'])->name('updatebookRating');
Route::post('updatebookDownloads', [booksController::class, 'bookDownloads'])->name('updatebookDownloads');
Route::match(['POST','GET'],'search', [booksController::class, 'search'])->name('search');
Route::match(['POST','GET'],'/getAllBooks/{id?}', [booksController::class, 'getBooks'])->defaults('id', null);
});





