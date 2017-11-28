<?php

namespace App\Http\Controllers;

use DB;
use App\Partners;
use App\Companypartnership;
use App\Users;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;

class AdminPartnershipController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $no = 1;
        $view = partners::orderBy('id', 'DESC')->get();
        return view('internal.adminpartnership.view', compact('view'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $user = users::pluck('name', 'id');
        $partners = partners::pluck('name', 'id');
        return view('internal.adminpartnership.create', compact('no','user','partners'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $partners = new partners;
        $extention = Input::file('image')->getClientOriginalExtension();
        $filename =  date('YmdHis'). ".$extention";
        $request->file('image')->move(
            base_path() . '/public/upload/companypartnership/', $filename
        );

        $partners->name = $request->name;
        $partners->email = $request->email;
        $partners->password =  Hash::make($request->password);
        $partners->re_password = $request->password;
        $partners->phone = $request->phone;
        $partners->address = $request->address;
        $partners->image = $filename;
        $partners->status = $request->status;
        $partners->save();
        \Session::flash('success', 'Partners data has been successfully added!,');
        return redirect('/adminpartnership');
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
        $user = users::all();
        $companypartnership = companypartnership::all();
        $edit = partners::find($id);
        return view('internal.adminpartnership.edit', compact('edit','user','companypartnership'));
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
       $partners = partners::find($id);
       $image = Input::file('image');
       if($image) {     
        File::delete(public_path('/upload/companypartnership/'.$partners->image)); 
        $extention = Input::file('image')->getClientOriginalExtension();  
        $filename =  date('YmdHis'). ".$extention";
        $request->file('image')->move(
            base_path() . '/public/upload/companypartnership/', $filename
        );
        $partners->name = $request->name;
        $partners->email = $request->email;
        if($partners->password = Hash::make('password') && $partners->re_password = ('password')) {
            $partners->password = bcrypt($request->password);
            $partners->re_password = $request->password;
        } else {
            $partners->password = array_except($request->password);
            $partners->re_password = $request->password;

        }
        $partners->phone = $request->phone;
        $partners->address = $request->address;
        $partners->phone = $request->phone;
        $partners->image = $filename;
        $partners->status = $request->status;
        $partners->save();
        \Session::flash('success', 'Partners data has been edited successfully!,');
        return redirect('/adminpartnership');
    } else {
        $partners->name = $request->name;
        $partners->email = $request->email;   
        if($partners->password = Hash::make('password') && $partners->re_password = ('password')) {
            $partners->password = bcrypt($request->password);
            $partners->re_password = $request->password;
        } else {
            $partners->password = array_except($request->password);
            $partners->re_password = $request->password;

        }
        $partners->phone = $request->phone;
        $partners->address = $request->address;
        $partners->phone = $request->phone;
        $partners->status = $request->status;
        $partners->save();
        \Session::flash('success', 'Partners data has been edited successfully!,');
        return redirect('/adminpartnership');
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
        $partners = partners::find($id);
        File::delete(public_path('/upload/companypartnership/'.$partners->image));
        $partners->delete();
        \Session::flash('warning', 'Partners data has been successfully deleted!,');
        return redirect('/adminpartnership');
    }
}
