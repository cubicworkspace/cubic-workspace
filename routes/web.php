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

/* page user */
Route::get('/','WebsiteController@index');
Route::get('package_list','WebsiteController@package_list');
Route::get('about','WebsiteController@about');
Route::get('event','WebsiteController@event');
Route::get('contact','WebsiteController@contact');



/* page admin */
Route::get('internal','Controller@internal');
Route::get('dashboard','InternalController@dashboard');
Route::resource('admin','AdminController'); 
Route::resource('categoryadmin','CategoryAdminController'); 
Route::resource('adminpartnership','AdminPartnershipController'); 
Route::resource('media','MediaController'); 
Route::resource('categorymedia','CategoryMediaController'); 

//Auth::routes();


