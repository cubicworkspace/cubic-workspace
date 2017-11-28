<?php

namespace App\Http\Controllers\Auth;

use App\Companies;
use App\Sosialmedias;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;


class PartnerLoginController extends Controller
{
	public function __construct() 
	{
		$this->middleware('guest:partner', ['except' => ['logout']]);
	}


	public function showLoginForm() 
	{
        $sosialmedia        = sosialmedias::where('status', '=', 'Y')->get();   
        $identitas          = companies::find('1');
		return view('partner.login', compact('identitas','sosialmedia'));
	}

	public function login(Request $request)
	{
		$this->validate($request, [
			'email' => 'required|email',
			'password' => 'required'
		]);

		if(Auth::guard('partner')->attempt(['email' => $request->email, 'password' => $request->password], $request->remember)) {

			return redirect()->intended(route('partner.dashboard'));
		}
       		 \Session::flash('error', 'Email or password does not match!,');
			return redirect('partner');
		
	}

	public function logout(Request $request)
	{
		Auth::guard('partner')->logout();
        $request->session()->flush();
 
        $request->session()->regenerate();
		// return 'telah keluar partner';
		return redirect('/partner');
	}
} 
