<?php

namespace App\Http\Controllers;
use DB;
use App\users;
use App\members;
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
use App\bookingspaces;
use App\billingcompanyservices;
use App\paymentmethodes;
use App\companies;
use App\teams;
use App\events;
use App\categoryevents;
use App\sosialmedias;
use App\messages;

use App\Http\Requests; 
use App\Http\Requests\companyservicesRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Hash;
use Session;
use PDF;


class PesonalController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('member');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sosialmedia             = sosialmedias::where('status', '=', 'Y')->get();   
        $identitas               = companies::find('1');
        return view('personal.dashboard', compact('sosialmedia','identitas'));
    }

    public function profile($id, $email='')
    {
        $editmember              = members::where('email', '=', $email)->get();   
        $edituser                = users::findOrFail($id);
        $sosialmedia             = sosialmedias::where('status', '=', 'Y')->get();   
        $identitas               = companies::find('1');
        return view('personal.profile', compact('sosialmedia','identitas','editmember','edituser'));
    }

    public function editprofile(Request $request, $id, $email)
    {
        $sosialmedia             = sosialmedias::where('status', '=', 'Y')->get();   
        $identitas               = companies::find('1');
        $member = members::find($id);
        $image = Input::file('image');
        if($image) {                
            File::delete(public_path('/upload/member/'.$member->image));
            $extention = Input::file('image')->getClientOriginalExtension();
            $filename = rand(11111,99999).'.'. $extention;
            $request->file('image')->move(
                base_path() . '/public/upload/member/', $filename
            );

        $user = users::findOrFail($request->codeuser);
        $user->name = $request->name;
        // if( $user->password = Hash::make('password')) {
        // $user->password = bcrypt($request->password);
        // } else {
        // $user->password = array_except($request->password);
        // }
        $member->codeuser = $request->codeuser;
        $member->institution = $request->institution;
        $member->birthday = $request->birthday;
        $member->phone = $request->phone;
        $member->address = $request->address;
        $member->image = $filename;
        $member->description = $request->description;
        $member->information = $request->information;
        $member->save();
        $user->save();
            \Session::flash('success', 'Member data has been edited successfully!,');
            return redirect('/personal/profile/'.$request->codeuser.'/'.$request->email.'/');
        } else {
        $member = members::find($id);
        $user = users::findOrFail($request->codeuser);
        $user->name = $request->name;
        // if( $user->password = Hash::make('password')) {
        // $user->password = bcrypt($request->password);
        // } else {
        // $user->password = array_except($request->password);
        // }
        $member->codeuser = $request->codeuser;
        $member->institution = $request->institution;
        $member->birthday = $request->birthday;
        $member->phone = $request->phone;
        $member->address = $request->address;
        $member->description = $request->description;
        $member->information = $request->information;
        $member->save();
        $user->save();
            \Session::flash('success', 'Member data has been edited successfully!,');
            return redirect('/personal/profile/'.$request->codeuser.'/'.$request->email.'/');

        }
        return view('personal.profile', compact('sosialmedia','identitas','editmember','edituser'));
    }

    public function booking($id, $email='')
    {
        $editmember              = members::where('email', '=', $email)->get();   
        $sosialmedia             = sosialmedias::where('status', '=', 'Y')->get();   
        $identitas               = companies::find('1');
        $bookingspaces           = bookingspaces::where('email', '=', $email)->get();
        
        return view('personal.booking', compact('sosialmedia','identitas','editmember','bookingspaces'));
    }

}
