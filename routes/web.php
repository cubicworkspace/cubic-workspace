<?php

use Illuminate\Http\Request;
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


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('internal','Controller@internal');
Route::get('dashboard','InternalController@dashboard');
Route::resource('admin','AdminController'); 
Route::resource('categoryadmin','CategoryAdminController'); 
Route::resource('adminpartnership','AdminPartnershipController'); 
Route::resource('media','MediaController'); 
Route::resource('categorymedia','CategoryMediaController'); 
Route::resource('companies','CompaniesController');
Route::resource('informasicompanies','InformasiCompaniesController');  
Route::resource('companypartnership','CompanyPartnershipController'); 
Route::resource('country','CountryController'); 
Route::resource('city','CityController'); 
Route::resource('user','UserController'); 
Route::resource('companyservices','CompanyServicesController'); 
Route::resource('tagservices','TagServicesController'); 
Route::resource('services','ServicesController'); 
Route::resource('categoryservices','CategoryServicesController'); 
Route::resource('billingcompanyservices','BillingCompanyServicesController'); 
Route::resource('historybilling','HistoryBillingController'); 

