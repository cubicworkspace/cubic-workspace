<?php

namespace App\Http\Controllers;

use DB;
use App\media;
use App\categorymedia;
use App\informasicompanies;
use App\companypartnership;
use App\companyservices;
use App\testimonials;
use App\subscribers;
use App\citys;
use App\services;

use App\companies;
use App\teams;
use App\sosialmedias;
use App\events;
use App\messages;
use App\categoryevents;

use App\Http\Requests; // path saja, untuk form request (jika ada)
use App\Http\Requests\companyservicesRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

class WebsiteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $media = media::where('codecategorymedia','5')->get();
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
        return view('website.index', compact('media','header','topbasecamp','specialpackages','services','testimonial'));
    }

    public function package_list()
    {
        $companyservices          = companyservices::paginate(10);
        $count_companyservices    = companyservices::count();
        $city                     = citys::pluck('name','id');
        $services                 = services::pluck('name','id');
        return view('website.package_list', compact('companyservices','count_companyservices','city','services'));
    }


    public function search(Request $request) {
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

    public function about()
    {
         $companies=companies::all();
         $team=teams::all();
         $companypartnership=companypartnership::all();
         return view('website.about', compact('companies','team','companypartnership'));
    }

    public function event()
    {
         $categoryevent=categoryevents::all();
         $event=events::all();
         return view('website.event', compact('event','categoryevent'));
    }

    public function contact()
    {
         $companies=companies::all();
         $informasicompanies=informasicompanies::all();
         $message=messages::all();
         $sosialmedia = sosialmedias::all();
         return view('website.contact', compact('companies','informasicompanies','message','sosialmedia'));
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
        \Session::flash('success', 'Terimakasih telah melakukan Newsletter!,');
        return redirect('/newsletter');
        } 
        \Session::flash('warning', 'Email anda sudah terdaftar di Newsletter!,');
        return redirect('/newsletter');
    
    }
   
}
