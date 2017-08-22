<?php

namespace App\Http\Controllers;

use DB;
use App\admins;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;

class AdminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $no = 1;
        $view = admins::all();
        return view('internal.admin.view', compact('view'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('internal.admin.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $admin = new admins;

        $extention = Input::file('image')->getClientOriginalExtension();
        $filename = rand(11111,99999).'.'. $extention;
        $request->file('image')->move(
            base_path() . '/public/upload/admin/', $filename
        );

        $this->validate($request, [
             'codecategoryadmin' => 'required',
             'codeadmin' => 'required',
             'phone' => 'required',
             'email' => 'required',
             'password' => 'required']);
        $admin->codecategoryadmin = $request->codecategoryadmin;
        $admin->codeadmin = $request->codeadmin;
        $admin->phone = $request->phone;
        $admin->email = $request->email;
        $admin->password = $request->password;
        $admin->image = $filename;
        $admin->status = $request->status;
        $admin->save();
        \Session::flash('success', 'Admin data has been successfully added!,');
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
        $edit = admins::find($id);
        return view('internal.admin.edit', compact('edit'));
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
        $admin = admins::find($id);
        $image = Input::file('image');
        if($image) {     
            File::delete('public/upload/admin'.'/'.$admin->image);
            $extention = Input::file('image')->getClientOriginalExtension();
            $filename = rand(11111,99999).'.'. $extention;
            $request->file('image')->move(
                base_path() . '/public/upload/admin/', $filename
            );

            $this->validate($request, [
                 'codecategoryadmin' => 'required',
                 'codeadmin' => 'required',
                 'phone' => 'required',
                 'email' => 'required',
                 'password' => 'required']);
            $admin->codecategoryadmin = $request->codecategoryadmin;
            $admin->codeadmin = $request->codeadmin;
            $admin->phone = $request->phone;
            $admin->email = $request->email;
            $admin->password = $request->password;
            $admin->image = $filename;
            $admin->status = $request->status;
            $admin->save();
            \Session::flash('success', 'Admin data has been edited successfully!,');
            return redirect('/admin');
        } else {
            $admin = admins::find($id);
            $this->validate($request, [
                 'codecategoryadmin' => 'required',
                 'codeadmin' => 'required',
                 'phone' => 'required',
                 'email' => 'required',
                 'password' => 'required']);
            $admin->codecategoryadmin = $request->codecategoryadmin;
            $admin->codeadmin = $request->codeadmin;
            $admin->phone = $request->phone;
            $admin->email = $request->email;
            $admin->password = $request->password;
            $admin->image = $request->image;
            $admin->status = $request->status;
            $admin->save();
            \Session::flash('success', 'Admin data has been edited successfully!,');
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
        $admin = admins::find($id);
            Storage::delete('public/upload/admin'.'/'.$admin->image);
            $admin->delete();
             \Session::flash('warning', 'Admin data has been successfully deleted!,');
            return redirect('/admin');
    }
}
