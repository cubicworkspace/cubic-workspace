<?php

namespace App\Http\Controllers;

use DB;
use App\media;
use App\categorymedia;
use App\informasicompanies;

use Illuminate\Http\Request;

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
        $media = media::find('4');
        $informasicompanies = informasicompanies::where('categoryinfromasi', '=', 'HEADER')
                                                 ->where('status', '=', 'Y')->limit(3)->get();;
        return view('website.index', compact('media','informasicompanies'));
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

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
