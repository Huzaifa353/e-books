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

Route::prefix('cart')->as('cart.')->group(function() {
    Route::get('/', 'CartController@index')->name('index');
    Route::get('/get', 'CartController@get')->name('get'); // Get all items from cart
    Route::get('/add/{ebookId}', 'CartController@store')->name('add'); // add item to cart
    Route::get('/remove/{ebookId}', 'CartController@destroy')->name('remove'); // remove item from cart
    Route::get('/count', 'CartController@countItems')->name('count'); // remove item from cart
});
