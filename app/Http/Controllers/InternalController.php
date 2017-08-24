<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\AuthenticatesUsers;


class InternalController extends Controller
{
	public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function dashboard () {
   		return view('internal.dashboard');
    }

    public function admin () {
   		return view('internal.admin.view');
    }

}
