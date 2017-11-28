<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Companies;
use Auth;


class AdminLoginController extends Controller
{
	public function __construct() 
	{
		$this->middleware('guest:admin', ['except' => ['logout']]);
	}


	public function showLoginForm() 
	{
        $identitas          = companies::find('1');
		return view('internal.login', compact('identitas'));
	}

	public function login(Request $request)
	{
		$this->validate($request, [
			'email' => 'required|email',
			'password' => 'required|min:6'
		]);

		if(Auth::guard('admin')->attempt(['email' => $request->email, 'password' => $request->password], $request->remember)) {

			return redirect()->intended(route('internal.dashboard'));
		}
			return redirect()->back()->withInput($request->only('email', 'remember'));
		
	}

	public function logout()
	{
		Auth::guard('admin')->logout();
		// return 'telah keluar admin';
		return redirect('/internal');
	}
} 
