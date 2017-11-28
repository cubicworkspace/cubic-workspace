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


Auth::routes();
/* page user */
Route::get('/','WebsiteController@index')->name('website.index');
Route::get('website/package','WebsiteController@package_list');
Route::get('website/package/search', 'WebsiteController@package_search');
Route::get('website/package/searchroom', 'WebsiteController@package_searchroom');
Route::get('website/package/detail/{id}/{name}','WebsiteController@package_detail');
Route::get('website/partnership','WebsiteController@partner');
Route::get('website/about','WebsiteController@about');
Route::get('website/events','WebsiteController@events');
Route::get('website/events/detail/{id}/{title}','WebsiteController@events_detail');
Route::get('website/events/category/{id}/{name}','WebsiteController@events_category');
Route::get('website/contact','WebsiteController@contact');
Route::post('website/subscriber/tambah','WebsiteController@subscriber');
Route::get('website/newsletter','WebsiteController@newsletter');
Route::post('website/bookingtour','WebsiteController@bookingtour');
Route::get('website/loginmember','WebsiteController@loginmember');
Route::post('website/register','WebsiteController@register');
Route::get('website/partnership/{id}/{name}','WebsiteController@partnership');
Route::post('website/messages','WebsiteController@messages');
Route::post('website/partnertship/register','WebsiteController@partnership_register')->name('website.partnershipregister');


Route::get('partner','PartnershipController@index');


Route::prefix('member')->group(function() {
	Route::get('/login','PersonalController@index')->name('member.dashboard');
	Route::get('/login','Auth\MemberController@showLoginForm')->name('member.login');
	Route::post('/','Auth\MemberController@login')->name('member.login.submit');
});
/* end page user */

/* login social media */
Route::get('auth/{provider}', 'Auth\RegisterController@redirectToProvider');
Route::get('auth/{provider}/callback', 'Auth\RegisterController@handleProviderCallback');
/* end login social media */


Route::get('/home', 'HomeController@index')->name('home');


// Route::resource('login','LoginController'); 

// /* page member */
// Route::get('eksternal','Controller@eksternal');
// Route::post('eksternal','Controller@login');
Route::group(['middleware' => 'auth:web', 'NoCacheMiddleware'], function() {
	Route::get('personal/dashboard','PesonalController@index');
	Route::get('personal/profile/{id}/{email}','PesonalController@profile');
	Route::post('personal/profile/edit/{id}/{email}','PesonalController@editprofile');
	Route::post('personal/booking/payment/{id}','PesonalController@payment');
	Route::get('personal/booking/{id}/{email}','PesonalController@booking');
	Route::get('website/package/booking/{id}/{name}','WebsiteController@booking');
	Route::get('website/package/bookingroom','WebsiteController@bookingroom');
	Route::post('website/package/bookingroom/send','WebsiteController@bookingsend');
	Route::get('website/package/bookingroom/thanks/{invoice}','WebsiteController@bookingthanks');
	Route::get('website/package/invoice/print/{invoice}','WebsiteController@invoice_print');

});
/* end page member */


Route::get('/partner', 'Auth\PartnerLoginController@showLoginForm')->name('partner.login');
Route::post('/partner', 'Auth\PartnerLoginController@login')->name('partner.login.submit');
Route::get('/patner/logout', 'Auth\PartnerLoginController@logout')->name('partner.logout');
Route::group(['middleware' => 'auth:partner', 'NoCacheMiddleware'], function() {	
	Route::get('/partner/dashboard','PartnerController@index')->name('partner.dashboard');
	Route::post('/partner/editid/','PartnerController@editid')->name('partner.editid');
	Route::post('/partner/editprofile/','PartnerController@editprofile')->name('partner.editprofile');
	Route::post('/partner/editprofilepassword/','PartnerController@editprofilepassword')->name('partner.editprofilepassword');
	Route::get('/partner/companyservices','PartnerController@companyservices')->name('partner.companyservices');
	Route::get('/partner/companyservices/add','PartnerController@companyservices_add')->name('partner.companyservices_add');
	Route::post('/partner/companyservices/addaction','PartnerController@companyservices_add_action')->name('partner.companyservices_add_action');
	Route::get('/partner/companyservices/edit/{id}','PartnerController@companyservices_edit')->name('partner.companyservices_edit');
	Route::post('/partner/companyservices/editaction','PartnerController@companyservices_edit_action')->name('partner.companyservices_edit_action');
	Route::get('/partner/companyservices/delete/{codecompanyservices}','PartnerController@companyservices_delete')->name('partner.companyservices_delete');
	Route::get('/partner/bookingspace','PartnerController@bookingspace')->name('partner.bookingspace');
	Route::get('/partner/bookingspace/detail/{id}','PartnerController@bookingspace_detail');
	Route::get('/partner/bookingspace/print','PartnerController@bookingspace_print')->name('partner.bookingspace_print');
});



/* PAGE ADMINISTRATOR  */	
Route::get('/internal', 'Auth\AdminLoginController@showLoginForm')->name('internal.login');
Route::post('/internal', 'Auth\AdminLoginController@login')->name('internal.login.submit');
Route::get('/logout', 'Auth\AdminLoginController@logout')->name('internal.logout');
Route::group(['middleware' => 'auth:admin', 'NoCacheMiddleware'], function() {	
	Route::get('/dashboard','InternalController@index')->name('internal.dashboard');
	Route::resource('admin','AdminController'); 
	Route::resource('categoryadmin','CategoryAdminController'); 
	Route::resource('adminpartnership','AdminPartnershipController'); 
	Route::resource('media','MediaController'); 
	Route::resource('categorymedia','CategoryMediaController'); 
	Route::resource('companies','CompaniesController');
	Route::resource('informasicompanies','InformasiCompaniesController');  
	Route::resource('companypartnership','CompanyPartnershipController'); 
	Route::get('companypartnership/verified/{id}','CompanyPartnershipController@verified');
	Route::get('companypartnership/unverified/{id}','CompanyPartnershipController@unverified');
	Route::resource('country','CountryController'); 
	Route::resource('city','CityController'); 
	Route::resource('user','UserController'); 
	Route::resource('companyservices','CompanyServicesController'); 
	Route::get('companyservices/delete/{codecompanyservices}','CompanyServicesController@delete');
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
	Route::get('bookingspace/payment/{id}','BookingspaceController@payment');
	Route::get('bookingspace/detail/{id}','BookingspaceController@detailbookingspace');
	Route::resource('historybookingspace','HistorybookingspaceController');
	Route::resource('mediacompanyservices','MediaCompanyServicesController');  
	Route::resource('bookingtour','BookingtourController'); 
});
