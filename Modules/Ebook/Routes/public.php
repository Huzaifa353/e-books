<?php

Route::get('documents', 'EbookController@index')->name('ebooks.index');
Route::get('documents/{slug}', 'EbookController@show')->name('ebooks.show');
Route::post('documents/{slug}/unlock', 'EbookController@unlock')->name('ebooks.unlock');
Route::post('documents/{ebookId}/report', 'ReportEbookController@store')->name('ebooks.report.store');
Route::get('documents/{slug}/download/{fileId?}', 'EbookController@download')->name('ebooks.download');
// Route::get('ebook/upload', 'EbookController@create')->name('ebooks.upload');
Route::post('document', 'EbookController@store')->name('ebooks.create');
Route::get('document/{slug}/delete', 'EbookController@destroy')->name('ebooks.delete');
Route::get('document/{slug}/edit', 'EbookController@edit')->name('ebooks.edit');
Route::put('document/{id}', 'EbookController@update')->name('ebooks.update');
Route::get('epub/{slug}', 'EbookController@epubReader')->name('ebooks.epubReader');
Route::post('documents/{slug}/pdfviewer', 'EbookController@pdfviewer')->name('ebooks.pdfviewer');

use App\Http\Controllers\PayPalController;

Route::post('/api/paypal/orders', [PayPalController::class, 'createOrderPaypal']);
Route::post('/api/paypal/orders/{orderID}/capture', [PayPalController::class, 'captureOrderPaypal']);

Route::post('/api/paypal/order-cart', [PayPalController::class, 'checkoutOrderPaypal']);
Route::post('/api/paypal/order-cart/{orderID}/capture', [PayPalController::class, 'checkoutCaptureOrderPaypal']);
