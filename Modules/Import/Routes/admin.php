<?php

use Illuminate\Support\Facades\Route;

Route::get('importer', [
    'as' => 'admin.importer.index',
    'uses' => 'ImporterController@index',
    'middleware' => 'can:admin.importer.index',
]);

Route::post('importer-store', [
    'as' => 'admin.importer.store',
    'uses' => 'ImporterController@store',
    'middleware' => 'can:admin.importer.create',
]);


Route::get('export-ebook', [
    'as' => 'admin.ebook.export_ebook',
    'uses' => 'ImporterController@exportEbook',
    'middleware' => 'can:admin.importer.index',
]);
Route::post('csv-data', [
    'as' => 'admin.ebook.export_csv',
    'uses' => 'ImporterController@CsvData',
    'middleware' => 'can:admin.importer.index',
]);

