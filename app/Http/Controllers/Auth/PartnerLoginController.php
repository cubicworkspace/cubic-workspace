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
			'password' => 'required|min:6'
		]);

		if(Auth::guard('partner')->attempt(['email' => $request->email, 'password' => $request->password], $request->remember)) {

			return redirect()->intended(route('partner.dashboard'));
		}
			return redirect()->back()->withInput($request->only('email', 'remember'));
		
	}

	public function logout()
	{
		Auth::guard('partner')->logout();
		// return 'telah keluar partner';
		return redirect('/partner');
	}
} 
