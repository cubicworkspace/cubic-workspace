<?php

namespace App\Http\Controllers;

use DB;
use App\adminspartnerships;

use Illuminate\Http\Request;
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
        $view = adminspartnerships::orderBy('created_at', 'desc')->paginate(10);
        return view('internal.adminpartnership.view', compact('view'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('internal.adminpartnership.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $adminpartnership = new adminspartnerships;

         $extention = Input::file('image')->getClientOriginalExtension();
        $filename = rand(11111,99999).'.'. $extention;
        $request->file('image')->move(
            base_path() . '/public/upload/adminpartnership/', $filename
        );

        $this->validate($request, [
             'codecompanypartnership' => 'required',
             'codeadminpartnership' => 'required',
             'phone' => 'required',
             'email' => 'required',
             'name'  => 'required',
             'address' => 'required',
             'password' => 'required']);
        $adminpartnership->codecompanypartnership = $request->codecompanypartnership;
        $adminpartnership->codeadminpartnership = $request->codeadminpartnership;
        $adminpartnership->phone = $request->phone;
        $adminpartnership->name = $request->name;
        $adminpartnership->address = $request->address;
        $adminpartnership->email = $request->email;
        $adminpartnership->password = $request->password;
        $adminpartnership->image = $filename;
        $adminpartnership->status = $request->status;
        $adminpartnership->lastlogin = date('Y-m-d H:i:s');
        $adminpartnership->registerdate = date('Y-m-d H:i:s');
        $adminpartnership->save();
        \Session::flash('success', 'Admin Partnership data has been successfully added!,');
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
        
        $edit = adminspartnerships::find($id);
        return view('internal.adminpartnership.edit', compact('edit'));
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
       $adminpartnership = adminspartnerships::find($id);
        $image = Input::file('image');
        if($image) {     
            File::delete('public/upload/adminpartnership'.'/'.$adminpartnership->image);
            $extention = Input::file('image')->getClientOriginalExtension();
            $filename = rand(11111,99999).'.'. $extention;
            $request->file('image')->move(
                base_path() . '/public/upload/adminpartnership/', $filename
            );
                $this->validate($request, [
                     'codecompanypartnership' => 'required',
                     'codeadminpartnership' => 'required',
                     'phone' => 'required',
                     'email' => 'required',
                     'name'  => 'required',
                     'address' => 'required',
                     'password' => 'required']);
                $adminpartnership->codecompanypartnership = $request->codecompanypartnership;
                $adminpartnership->codeadminpartnership = $request->codeadminpartnership;
                $adminpartnership->phone = $request->phone;
                $adminpartnership->name = $request->name;
                $adminpartnership->address = $request->address;
                $adminpartnership->email = $request->email;
                $adminpartnership->password = $request->password;
                $adminpartnership->image = $filename;
                $adminpartnership->status = $request->status;
                $adminpartnership->lastlogin = date('Y-m-d H:i:s');
                $adminpartnership->registerdate = date('Y-m-d H:i:s');
                $adminpartnership->save();
                \Session::flash('success', 'Admin Partnership data has been edited successfully!,');
                return redirect('/adminpartnership');
        } else {

            $adminpartnership = adminspartnerships::find($id);
                $image = Input::file('image');
                $this->validate($request, [
                     'codecompanypartnership' => 'required',
                     'codeadminpartnership' => 'required',
                     'phone' => 'required',
                     'email' => 'required',
                     'name'  => 'required',
                     'address' => 'required',
                     'password' => 'required']);
                $adminpartnership->codecompanypartnership = $request->codecompanypartnership;
                $adminpartnership->codeadminpartnership = $request->codeadminpartnership;
                $adminpartnership->phone = $request->phone;
                $adminpartnership->name = $request->name;
                $adminpartnership->address = $request->address;
                $adminpartnership->email = $request->email;
                $adminpartnership->password = $request->password;
                $adminpartnership->status = $request->status;
                $adminpartnership->lastlogin = date('Y-m-d H:i:s');
                $adminpartnership->registerdate = date('Y-m-d H:i:s');
                $adminpartnership->save();
                \Session::flash('success', 'Admin Partnership data has been edited successfully!,');
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
        $adminpartnership = adminspartnerships::find($id);
        $adminpartnership->delete();
         \Session::flash('warning', 'Admin Partnership data has been successfully deleted!,');
        return redirect('/adminpartnership');
    }
}
