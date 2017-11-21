<?php

namespace App\Http\Controllers;

use DB;
use Auth;
use App\Companies;
use App\Partners;
use App\Companypartnership;

use Illuminate\Support\Facades\Input;
use Illuminate\Http\Request;

class PartnerController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth:partner');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $email =  Auth::user()->email;
        $identitas          = companies::find('1');
        $com               =  companypartnership::where('email', '=', $email)->limit(1)->get();
        return view('partner.dashboard', compact('identitas','com'));
    }

    public function companyservices()
    {
        $identitas          = companies::find('1');
        return view('partner.companyservices', compact('identitas'));
    }

    public function editid(Request $request) 
    {
        $email =  $request->email;
        DB::table('companypartnerships')
                ->where('email', $email)
                ->update(array(
                  'codepartner' => Input::get('id')
            ));
            return redirect('/partner/dashboard/');
    }
    public function editprofile(Request $request) 
    {
        $email =  $request->email;
        DB::table('companypartnerships')
                ->where('email', $email)
                ->update(array(
                  'codepartner' => Input::get('id')
            ));
        DB::table('partners')
                ->where('email', $email)
                ->update(array(
                  'name' => Input::get('name')
            ));
        \Session::flash('success', 'Profile data has been edited successfully!,');
            return redirect('/partner/dashboard/');
    }


}
