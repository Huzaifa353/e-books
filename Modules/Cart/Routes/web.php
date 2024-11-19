<?php

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

Route::prefix('cart')->group(function() {
    Route::get('/', 'CartController@index');
    Route::get('/get', 'CartController@get'); // Get all items from cart
    Route::get('/add/{ebookId}', 'CartController@store'); // add item to cart
    Route::get('/remove/{ebookId}', 'CartController@remove'); // remove item from cart
    Route::get('/count', 'CartController@countItems'); // remove item from cart
    
});
