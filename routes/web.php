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
Route::get('event_site','WebsiteController@event');
Route::get('contact','WebsiteController@contact');


Route::get('/home', 'HomeController@index')->name('home');

Route::get('internal','Controller@internal');
Route::post('internal','Controller@login');
Route::get('dashboard','InternalController@dashboard');

 Route::group(['middleware' => 'web'], function() {
	Route::auth();
 });

// Route::group(['middleware' => ['web','auth']], function() {
	
// 	Route::get('/home', 'HomeController@index');
// 	Route::get('/', function(){
// 		if(Auth::user()->status == 'ADMIN') {
// 			return "Admin";
// 		} else {
// 			return "user";
// 		}
// 	});
// });

Route::group(['middleware' => 'member','auth','web','nocache'], function() {


	Route::resource('login','LoginController'); 
});

/* PAGE ADMINISTRATOR  */
Route::group(['middleware' => ['admin','auth','web','nocache']], function() {
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
	Route::resource('team','TeamController'); 
	Route::resource('subscriber','SubscriberController'); 
	Route::resource('testimonial','TestimonialController'); 
	Route::resource('message','MessageController'); 
	Route::resource('sosialmedia','SosialmediaController'); 
	Route::resource('categoryevent','CategoryEventController');
	Route::resource('event','EventController'); 
	Route::resource('member','MemberController'); 
	Route::resource('categorypaymentmethode','CategorypaymentmethodeController'); 
	Route::resource('paymentmethode','PaymentmethodeController'); 
	Route::resource('bookingspace','BookingspaceController'); 
	Route::resource('historybookingspace','HistorybookingspaceController'); 
	//Route::resource('login','LoginController'); 
});
