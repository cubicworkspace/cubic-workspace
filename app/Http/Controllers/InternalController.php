<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Companies;

class InternalController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $identitas          = companies::find('1');
        return view('internal.dashboard', compact('identitas'));
    }
}
