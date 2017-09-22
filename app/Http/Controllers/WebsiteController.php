<?php

namespace App\Http\Controllers;

use DB;
use App\users;
use App\media;
use App\categorymedia;
use App\informasicompanies;
use App\companypartnership;
use App\companyservices;
use App\testimonials;
use App\subscribers;
use App\citys;
use App\services;
use App\mediacompanyservices;
use App\bookingtour;

use App\Http\Requests; // path saja, untuk form request (jika ada)
use App\Http\Requests\companyservicesRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Hash;

class WebsiteController extends Controller
{
  

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $media              = media::find('4');
        $header             = informasicompanies::where('categoryinfromasi', '=', 'HEADER')
                                                 ->where('status', '=', 'Y')->limit(3)->get();
        $topbasecamp        = companypartnership::where('codetagservices', '=', '3')
                                                 ->where('status', '=', 'Y')->limit(4)->get();
        $specialpackages    = companyservices::where('codetagservices', '=', '5')
                                                 ->where('status', '=', 'Y')->limit(3)->get();
        $services           = informasicompanies::where('categoryinfromasi', '=', 'SERVICES')
                                                 ->where('status', '=', 'Y')->limit(3)->get();
        $testimonial        = testimonials::where('status', '=', 'Y')->limit(2)->get();
        $city               = citys::pluck('name','id');
        $services2           = services::pluck('name','id');
        return view('website.index', compact('media','header','topbasecamp','specialpackages','services','testimonial','city','services2'));
    }

    public function package_list()
    {
        $companyservices          = companyservices::paginate(10);
        $count_companyservices    = companyservices::count();
        $city                     = citys::pluck('name','id');
        $services                 = services::pluck('name','id');
        return view('website.package_list', compact('companyservices','count_companyservices','city','services'));
    }

    public function package_search(Request $request) {
        $companyservices          = companyservices::paginate(10);
        $count_companyservices    = companyservices::count();
        $city                     = citys::pluck('name','id');
        $services                 = services::pluck('name','id');
        
        $q   = trim($request->input('q'));

        if (! empty($q)) {
            $codeservices = $request->input('codeservices');
            $codecity      = $request->input('codecity');

            // Query
            $query          = companyservices::where('name', 'LIKE', '%' . $q. '%');
            (! empty($codeservices)) ? $query->where('codeservices', $codeservices) : '';
            (! empty($codecity)) ? $query->where('codecity', $codecity) : '';
            $companyservices = $query->paginate(10);

            // URL Links count_companyservices
            $count_companyservices = (! empty($codeservices)) ? $companyservices->appends(['codeservices' => $codeservices]) : '';
            $count_companyservices = (! empty($codecity)) ? $count_companyservices = $companyservices->appends(['codecity' => $codecity]) : '';
            $count_companyservices = $companyservices->appends(['q' => $q]);

            $count_companyservices = $companyservices->total();
            return view('website.package_list', compact('companyservices','count_companyservices','city','services','q','count_companyservices'));
        }

        return redirect('package');
    }

     public function package_detail($id, $name='')
    {
        $companyservices          = companyservices::findOrFail($id);
        $mediacompanyservices     = mediacompanyservices::where('codecompanyservices', '=', $id)
                                                 ->where('status', '=', 'Y')->get();
        return view('website.package_detail', compact('companyservices','mediacompanyservices'));
    }

    public function about()
    {
         return view('website.about');
    }

    public function event()
    {
         return view('website.event');
    }

    public function contact()
    {
         return view('website.contact');
    }

    public function newsletter()
    {
         return view('website.newsletter');
    }

    public function subscriber(Request $request)
    {
        $subscriber = subscribers::where('email',Input::get('email'))->first();
        if (is_null($subscriber)) {
            $subscriber = new subscribers;
            $subscriber->name        = '-';
            $subscriber->email       = $request->email;
            $subscriber->status      = 'N';
            $subscriber->save();
        \Session::flash('success', 'Thank you for doing Newsletter!');
        return redirect('/');
        } 
        \Session::flash('warning', 'Your email is already registered in the Newsletter!');
        return redirect('/');
    
    }

    public function register(Request $request)
    {
        $user = users::where('email',Input::get('email'))->first();
        if (is_null($user)) {
            $user = new users;
            $user->name = $request->name;
            $user->lastlogin = date('Y-m-d H:i:s');
            $user->registerdate = date('Y-m-d H:i:s');
            $user->email = $request->email;
            $user->password = Hash::make($request->password);
            $user->save();
        \Session::flash('success', 'Thank you for registering as a member!');
        return redirect('/');
        } 
        \Session::flash('warning', 'Your email is registered as a member!');
        return redirect('/');
    
    }

    public function bookingtour(Request $request)
    {
            $bookingtour = new bookingtour;
            $bookingtour->codecompanyservices     = $request->codecompanyservices;
            $bookingtour->codecompanypartnership  = $request->codecompanypartnership;
            $bookingtour->date                    = $request->date;
            $bookingtour->time                    = $request->time;
            $bookingtour->status                  = 'N';
            $bookingtour->save();
        \Session::flash('success', 'Thank you for doing Booking Tour!');
        return redirect('/website/package');
    }

    public function dashboard()
    {
         return view('website.dashboard');
    }
   
}
