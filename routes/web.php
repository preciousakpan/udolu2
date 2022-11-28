<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\auth;
use App\Http\Controllers\userController;
use App\Http\Controllers;
use App\Http\Controllers\auth\RegisterController;
use App\Http\Controllers\booksController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return redirect('login');
});

//Route::get('/register',[RegisterController::class, 'register']);
//Route::post('/register',[RegisterController::class, 'register']);
Route::get('/logout',[RegisterController::class, 'logout'])->name('logout');
Route::prefix('/admin')->middleware(['web','isAdmin'])->group(function() {

    Route::get('/books', function () {
        return view('books.index');
    })->name('books');
   
    Route::get('get_books', [booksController::class, 'getAllBooks'])->name('get_books');
    Route::get('/users',[userController::class, 'index'])->name('users');
    Route::post('submit_book',[booksController::class, 'submitBook'])->name('submit_book');
    Route::get('create_language_ui',[booksController::class, 'createlanguage'])->name('create_language_ui');
    Route::post('create_book_languages',[booksController::class, 'createlanguage'])->name('create_book_languages');
    Route::get('get_languages',[booksController::class, 'getlanguage'])->name('get_languages');
    Route::get('create_book',[booksController::class, 'createBook'])->name('create_book');
    Route::get('view_book_category', [booksController::class, 'getBookCategories'])->name('view_book_category');
    Route::get('get_books_id/{id}', [booksController::class, 'getAllBookById'])->name('get_books_id');
    Route::get('update_book/{id}', [booksController::class, 'update_book'])->name('update_book');
    Route::get('delete_record/{id}/{record}', [booksController::class, 'deleteRecord'])->name('delete_record');
    Route::match(['get', 'post'], '/create_books_category', [booksController::class, 'booksCategory'])->name('create_book_category');
    
});
Route::match(['get','post'],'login',[RegisterController::class, 'login'])->name('login');
Route::match(['get','post'],'webregister',[RegisterController::class, 'Register'])->name('webregister');
