<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class InternalController extends Controller
{
    public function dashboard () {
   		return view('internal.dashboard');
    }

    public function admin () {
   		return view('internal.admin.view');
    }

}
