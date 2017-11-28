<?php

namespace App\Http\Controllers;

use DB;
use App\Admin;
use App\CategoryAdmins;

use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;

class adminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
        $no = 1;
        $view = admin::orderBy('id', 'ASC')->get();
        return view('internal.admin.view', compact('view'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categoryadmin = categoryadmins::all();
        return view('internal.admin.create', compact('categoryadmin'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $admin = new admin;

        $extention = Input::file('image')->getClientOriginalExtension();
        $filename =  date('YmdHis'). ".$extention";
        $request->file('image')->move(
            base_path() . '/public/upload/admin/', $filename
        );

        $admin->name = $request->name;
        $admin->email = $request->email;
        $admin->phone = $request->phone;
        $admin->image = $filename;
        $admin->password = Hash::make($request->password);
        $admin->re_password = $request->password;
        $admin->codecategoryadmin = $request->codecategoryadmin;
        $admin->status = $request->status;
        $admin->save();
        \Session::flash('success', 'admins data has been successfully added!,');
        return redirect('/admin');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $categoryadmin = categoryadmins::all();
        $edit = admin::find($id);
        return view('internal.admin.edit', compact('edit','categoryadmin'));
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
        
        $admin = admin::find($id);
        $image = Input::file('image');
        if($image) {     
            File::delete(public_path('/upload/admin/'.$admin->image)); 
            $extention = Input::file('image')->getClientOriginalExtension();  
            $filename =  date('YmdHis'). ".$extention";
            $request->file('image')->move(
                base_path() . '/public/upload/admin/', $filename
            );
        $this->validate($request, [
             'email' => 'required']);
        $admin->name = $request->name;
        $admin->image = $filename;
        $admin->email = $request->email;
        $admin->phone = $request->phone;
        if($admin->password = Hash::make('password')) {
        $admin->password = bcrypt($request->password);
        $admin->re_password = $request->password;
        } else {
        $admin->password = array_except($request->password);
        $admin->re_password = array_except($request->password);

        }
        $admin->status = $request->status;
        $admin->save();
        \Session::flash('success', 'admins data has been edited successfully!,');
        return redirect('/admin');

        } else {

        $this->validate($request, [
             'email' => 'required']);
        $admin->name = $request->name;
        $admin->email = $request->email;
        $admin->phone = $request->phone;
        if($admin->password = Hash::make('password')) {
        $admin->password = bcrypt($request->password);
        $admin->re_password = $request->password;
        } else {
        $admin->password = array_except($request->password);
        $admin->re_password = array_except($request->password);

        }
        $admin->status = $request->status;
        $admin->save();
        \Session::flash('success', 'admins data has been edited successfully!,');
        return redirect('/admin');
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
        $admin = admin::find($id);
        $admin->delete();
        \Session::flash('warning', 'admins data has been successfully deleted!,');
        return redirect('/admin');
    }
}
