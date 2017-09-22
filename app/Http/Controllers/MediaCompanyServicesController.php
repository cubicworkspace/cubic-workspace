<?php

namespace App\Http\Controllers;

use DB;
use App\mediacompanyservices;
use App\companyservices;
use App\companypartnership;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;

class MediaCompanyServicesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $no = 1;
        $view = mediacompanyservices::orderBy('id', 'DESC')->get();
        return view('internal.mediacompanyservices.view', compact('view'));
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $companypartnership = companypartnership::pluck('name', 'id');        
        $companyservices    = companyservices::pluck('name', 'id');
        return view('internal.mediacompanyservices.create', compact('companypartnership','companyservices'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        
        $mediacompanyservices= new mediacompanyservices;
        $extention = Input::file('image')->getClientOriginalExtension();
        $filename =  date('YmdHis'). ".$extention";
        $request->file('image')->move(
            base_path() . '/public/upload/mediacompanyservices/', $filename
        );

        $this->validate($request, [
             'name' => 'required']);
        $mediacompanyservices->codecompanyservices= $request->codecompanyservices;
        $mediacompanyservices->codecompanypartnership   = $request->codecompanypartnership;
        $mediacompanyservices->name        = $request->name;
        $mediacompanyservices->image       = $filename;
        $mediacompanyservices->status      = $request->status;
        $mediacompanyservices->save();
        \Session::flash('success', 'Media Company Services data has been successfully added!,');
        return redirect('/mediacompanyservices');
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
        $companypartnership = companypartnership::all();       
        $companyservices    = companyservices::all();
        $edit = mediacompanyservices::find($id);
        return view('internal.mediacompanyservices.edit', compact('edit','companypartnership','companyservices'));
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
        
        $mediacompanyservices= mediacompanyservices::find($id);
            $image = Input::file('image');
            if($image) {
                File::delete(public_path('/upload/mediacompanyservices/'.$mediacompanyservices->image));  
                $extention = Input::file('image')->getClientOriginalExtension();
                $filename =  date('YmdHis'). ".$extention";
                $request->file('image')->move(
                base_path() . '/public/upload/mediacompanyservices/', $filename
                );

            $this->validate($request, [
                 'name' => 'required']);
            $mediacompanyservices->codecompanyservices= $request->codecompanyservices;
            $mediacompanyservices->codecompanypartnership   = $request->codecompanypartnership;
            $mediacompanyservices->name        = $request->name;
            $mediacompanyservices->image       = $filename;
            $mediacompanyservices->status      = $request->status;
            $mediacompanyservices->save();
            \Session::flash('success', 'Media Company Services data has been successfully added!,');
            return redirect('/mediacompanyservices');
        } else {
            $this->validate($request, [
                 'name' => 'required']);
            $mediacompanyservices->codecompanyservices= $request->codecompanyservices;
            $mediacompanyservices->codecompanypartnership   = $request->codecompanypartnership;
            $mediacompanyservices->name        = $request->name;
            $mediacompanyservices->status      = $request->status;
            $mediacompanyservices->save();
            \Session::flash('success', 'Media Company Services data has been successfully added!,');
            return redirect('/mediacompanyservices');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        
        $mediacompanyservices = mediacompanyservices::find($id);
        File::delete(public_path('/upload/mediacompanyservices/'.$mediacompanyservices->image));
        $mediacompanyservices->delete();
        \Session::flash('warning', 'Media Company Services data has been successfully deleted!,');
        return redirect('/mediacompanyservices');
    }
}
