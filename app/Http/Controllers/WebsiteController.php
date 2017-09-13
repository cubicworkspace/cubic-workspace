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
         return view('website.package_list');
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
        \Session::flash('success', 'Terimakasih telah melakukan Newsletter!,');
        return redirect('/newsletter');
        } 
        \Session::flash('warning', 'Email anda sudah terdaftar di Newsletter!,');
        return redirect('/newsletter');
    
    }
   
}
