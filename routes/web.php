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
Route::get('website/package','WebsiteController@package_list');
Route::get('website/package/search', 'WebsiteController@package_search');
Route::get('website/package/searchroom', 'WebsiteController@package_searchroom');
Route::get('website/package/detail/{id}/{name}','WebsiteController@package_detail');
Route::get('website/about','WebsiteController@about');
Route::get('website/events','WebsiteController@event');
Route::get('website/contact','WebsiteController@contact');
Route::post('website/subscriber/tambah','WebsiteController@subscriber');
Route::get('website/newsletter','WebsiteController@newsletter');
Route::post('website/bookingtour','WebsiteController@bookingtour');
Route::get('website/loginmember','WebsiteController@loginmember');
Route::post('website/register','WebsiteController@register');
/* end page user */

/* login social media */
Route::get('auth/{provider}', 'Auth\RegisterController@redirectToProvider');
Route::get('auth/{provider}/callback', 'Auth\RegisterController@handleProviderCallback');
/* end login social media */


Route::get('/home', 'HomeController@index')->name('home');


 Route::group(['middleware' => 'web'], function() {
	 Route::auth();
 });

// Route::resource('login','LoginController'); 

/* page member */
// Route::post('eksternal','EksternalController');

Route::get('eksternal','Controller@eksternal');
Route::post('eksternal','Controller@login');
Route::group(['middleware' => ['member','nocache']], function() {
	Route::get('member/dashboard','ClientController@index');
	Route::get('website/package/booking/{id}/{name}','WebsiteController@booking');
	Route::get('website/package/bookingroom','WebsiteController@bookingroom');
	Route::post('website/package/bookingroom/send','WebsiteController@bookingsend');
	Route::get('website/package/bookingroom/thanks/{invoice}','WebsiteController@bookingthanks');
	Route::get('website/package/invoice/print/{invoice}','WebsiteController@invoice_print');

});
/* end page member */

/* PAGE ADMINISTRATOR  */
Route::get('internal','Controller@internal');
Route::post('internal','Controller@login');
Route::get('dashboard','InternalController@dashboard');
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
	Route::resource('mediacompanyservices','MediaCompanyServicesController');  
	Route::resource('bookingtour','BookingtourController'); 
	//Route::resource('login','LoginController'); 
});
