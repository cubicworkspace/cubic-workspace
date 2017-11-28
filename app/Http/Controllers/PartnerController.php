<?php

namespace App\Http\Controllers;

use DB;
use Auth;
use App\Companies;
use App\Partners;
use App\Countrys;
use App\Citys;
use App\Companypartnership;
use App\Companyservices;
use App\Bookingspaces;
use App\Bookingtour;
use App\Tagservices;
use App\Services;
use App\Tagcompanyservices;
use App\Billingcompanyservices;
use App\Users;
use App\Paymentmethodes;


use App\Http\Requests;
use Illuminate\Support\Facades\Input;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Hash;
use PDF;

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
      $identitas    = companies::find('1');
      $email        = Auth::user()->email;
      $cp =   companypartnership::where('email', '=', $email)->limit(1)->get();
      foreach($cp as $row3){}
        $count_companyservices    = companyservices::where('codecompanypartnership', '=', $row3->id)->count();
      $count_bookingspaces   = bookingspaces::where('codecompanypartnership', '=', $row3->id)->count();
      $count_bookingtour  = bookingtour::where('codecompanypartnership', '=', $row3->id)->count();
      $com          = companypartnership::where('email', '=', $email)->limit(1)->get();
      $country      = countrys::all();
      $city         = citys::all();
      return view('partner.dashboard', compact('identitas','com','country','city','count_companyservices','count_bookingspaces','count_bookingtour'));
    }


    public function editprofile(Request $request) 
    {
      $email =  $request->email;
      $cp = companypartnership::where('email', '=', $email)->limit(1)->get();
      foreach($cp as $companypartnership){}
        $logo = Input::file('logo');
      $favicon = Input::file('favicon');
      if($logo && $favicon) {     
        File::delete(public_path('/upload/companypartnership/'.$companypartnership->logo));  
        $extention = Input::file('logo')->getClientOriginalExtension();
        $filename = rand(11111,99999).'.'. $extention;
        $request->file('logo')->move(
          base_path() . '/public/upload/companypartnership/', $filename
        );
        File::delete(public_path('/upload/companypartnership/'.$companypartnership->favicon));  
        $extention2 = Input::file('favicon')->getClientOriginalExtension();
        $favicon = rand(11111,99999).'.'. $extention2;
        $request->file('favicon')->move(
          base_path() . '/public/upload/companypartnership/', $favicon
        );
        DB::table('companypartnerships')
        ->where('email', $email)
        ->update(array(
          'codepartner' => Input::get('id'),
          'name'        => Input::get('name'),
          'favicon'        => $favicon,
          'logo'        => $filename,
          'phone'       => Input::get('phone'),
          'maps'        => Input::get('maps'),
          'address'     => Input::get('address'),
          'codecity'    => Input::get('codecity'),
          'codecountry' => Input::get('codecountry'),
          'profile'     => Input::get('profile'),
          'history'     => Input::get('history'),
          'description' => Input::get('description'),
          'mision'      => Input::get('mision'),
          'vision'      => Input::get('vision'),
          'faq'         => Input::get('faq'),
          'information' => Input::get('information')
        ));
        DB::table('partners')
        ->where('email', $email)
        ->update(array(
          'name'        => Input::get('name'),
          'phone'       => Input::get('phone'),
          'address'     => Input::get('address'),
          'image'       => $filename,
        ));
      } else {

        DB::table('companypartnerships')
        ->where('email', $email)
        ->update(array(
          'codepartner' => Input::get('id'),
          'name'        => Input::get('name'),
          'phone'       => Input::get('phone'),
          'maps'        => Input::get('maps'),
          'address'     => Input::get('address'),
          'codecity'    => Input::get('codecity'),
          'codecountry' => Input::get('codecountry'),
          'profile'     => Input::get('profile'),
          'history'     => Input::get('history'),
          'description' => Input::get('description'),
          'mision'      => Input::get('mision'),
          'vision'      => Input::get('vision'),
          'faq'         => Input::get('faq'),
          'information' => Input::get('information')
        ));
        DB::table('partners')
        ->where('email', $email)
        ->update(array(
          'name'        => Input::get('name'),
          'phone'       => Input::get('phone'),
          'address'     => Input::get('address'),
        ));
      }
      \Session::flash('success', 'Profile data has been edited successfully!,');
      return redirect('/partner/dashboard/');
    }

    public function editprofilepassword(Request $request) 
    {
      if (Input::get('password') === Input::get('confirm_password')) {
        $email =  $request->email;
        DB::table('partners')
        ->where('email', $email)
        ->update(array(
          'password'        => Hash::make(Input::get('password')),
          're_password' => Input::get('password')
        ));

        \Session::flash('success', 'Password data has been edited successfully!,'.'<br>'.'Please login again');
        return redirect()->intended(route('partner.logout'));
      }
      else {
        \Session::flash('error', 'The password you input is not the same!,');
        return redirect('/partner/dashboard/');
      }
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


    public function companyservices()
    {
      $action     = 'view';
      $email      = Auth::user()->email;
      $cp         =   companypartnership::where('email', '=', $email)->limit(1)->get();
      foreach($cp as $row3){}
        $no = 1;
      $identitas          = companies::find('1');
      $view = companyservices::where('codecompanypartnership', '=', $row3->id)->orderBy('id', 'ASC')->get();
      return view('partner.companyservices', compact('identitas','view','action'));
    }

    public function companyservices_add()
    {
      $action       = 'add';
      $email        = Auth::user()->email;
      $identitas    = companies::find('1');
      $cp           =   companypartnership::where('email', '=', $email)->limit(1)->get();

      $companyservices = DB::select('select max(codecompanyservices) as idMaks from companyservices');
      foreach($companyservices as $row3){}
        $nomor  = $row3->idMaks; 
      $noRand = (int) substr($row3->idMaks, 3, 3);
      $noRand++;  
      $char   = "COS";
      $no   =  $char . sprintf("%03s", $noRand);
      $services = services::pluck('name', 'id');

      return view('partner.companyservices', compact('identitas','action','no','services','cp'));
    }

    public function companyservices_add_action(Request $request)
    {
      $companyservices = new companyservices;
      $billingcompanyservices = new billingcompanyservices;
      $extention = Input::file('image')->getClientOriginalExtension();
      $filename =  date('YmdHis'). ".$extention";
      $request->file('image')->move(
        base_path() . '/public/upload/mediacompanyservices/', $filename
      );

      $companyservices->name = $request->name;
      $companyservices->codecompanyservices = $request->codecompanyservices;
      $companyservices->codeservices = $request->codeservices;
      $companyservices->codecity = $request->codecity;
      $companyservices->codecompanypartnership = $request->codecompanypartnership;
      $companyservices->information = $request->information;
      $companyservices->quota = $request->quota;
      $companyservices->price = $request->price;
      $companyservices->image = $filename;
      $companyservices->quotauser = $request->quotauser;
      $companyservices->registerdate = date('Y-m-d H:i:s');
      $companyservices->statusbooking = $request->statusbooking;

      $billingcompanyservices->codecompanyservices = $request->codecompanyservices;
      $billingcompanyservices->name = $request->name;
      $billingcompanyservices->codecompanypartnership = $request->codecompanypartnership;
      $billingcompanyservices->quota = $request->quota;
      $billingcompanyservices->currentquota = $request->quota;
      $billingcompanyservices->information = $request->information;   
      $billingcompanyservices->registerdate = date('Y-m-d H:i:s');

      $companyservices->save();
      $billingcompanyservices->save();

      \Session::flash('success', 'Company Services data has been successfully added!,');
      return redirect('/partner/companyservices');

    }

    public function companyservices_edit($id)
    {
      $action       = 'edit';
      $identitas    = companies::find('1');
      $edit = companyservices::find($id);
      $services = services::all();
      return view('partner.companyservices', compact('identitas','edit','services','action'));
    }


    public function companyservices_edit_action(Request $request)
    {
      $codecompanyservices = $request->codecompanyservices;
      $cp = companyservices::where('codecompanyservices', '=', $codecompanyservices)->limit(1)->get();
      foreach($cp as $companyservices){}
        $image = Input::file('image');
      if($image) {     
        File::delete(public_path('/upload/mediacompanyservices/'.$companyservices->image));  
        $extention = Input::file('image')->getClientOriginalExtension();
        $filename = rand(11111,99999).'.'. $extention;
        $request->file('image')->move(
          base_path() . '/public/upload/mediacompanyservices/', $filename
        );


        DB::table('companyservices')
        ->where('codecompanyservices', $codecompanyservices)
        ->update(array(
          'name'           => Input::get('name'),
          'codeservices'   => Input::get('codeservices'),
          'information'    => Input::get('information'),
          'quota'          => Input::get('quota'),
          'price'          => Input::get('price'),
          'quotauser'      => Input::get('quotauser'),
          'information'    => Input::get('information'),
          'statusbooking'  => Input::get('statusbooking'),
          'image'          => $filename,
        ));

        DB::table('billingcompanyservices')
        ->where('codecompanyservices', $codecompanyservices)
        ->update(array(
          'name'           => Input::get('name'),
          'information'    => Input::get('information'),
          'quota'          => Input::get('quota'),
          'currentquota'   => Input::get('quota'),
          'information'    => Input::get('information'),
        ));

        \Session::flash('success', 'Company Services data has been edited successfully!,');
        return redirect('/partner/companyservices');
      } else {

        DB::table('companyservices')
        ->where('codecompanyservices', $codecompanyservices)
        ->update(array(
          'name'           => Input::get('name'),
          'codeservices'   => Input::get('codeservices'),
          'information'    => Input::get('information'),
          'quota'          => Input::get('quota'),
          'price'          => Input::get('price'),
          'quotauser'      => Input::get('quotauser'),
          'information'    => Input::get('information'),
          'statusbooking'  => Input::get('statusbooking'),
        ));

        DB::table('billingcompanyservices')
        ->where('codecompanyservices', $codecompanyservices)
        ->update(array(
          'name'           => Input::get('name'),
          'information'    => Input::get('information'),
          'quota'          => Input::get('quota'),
          'currentquota'   => Input::get('quota'),
          'information'    => Input::get('information'),
        ));

        \Session::flash('success', 'Company Services data has been edited successfully!,');
        return redirect('/partner/companyservices');
      }
    }

    public function companyservices_delete($codecompanyservices)
    {
      $cp =  companyservices::where('codecompanyservices', '=', $codecompanyservices)->limit(1)->get();
      foreach($cp as $companyservices){}
        DB::table('companyservices')->where('codecompanyservices', '=', $codecompanyservices)->delete();
      DB::table('billingcompanyservices')->where('codecompanyservices', '=', $codecompanyservices)->delete();
      File::delete(public_path('/upload/mediacompanyservices/'.$companyservices->image));  
      \Session::flash('warning', 'Company Services data has been successfully deleted!,');
      return redirect('/partner/companyservices');
    }


    public function bookingspace()
    {
      $action     = 'view';
      $email      = Auth::user()->email;
      $cp         =  companypartnership::where('email', '=', $email)->limit(1)->get();
      foreach($cp as $row3){}
        $no = 1;
      $identitas          = companies::find('1');
      $view = bookingspaces::where('codecompanypartnership', '=', $row3->id)->where('statuspayment', '=', 'Y')->orderBy('id', 'ASC')->get();
      return view('partner.bookingspace', compact('identitas','view','action'));
    }

    public function bookingspace_detail($id)
    {
      // return 'a';
      $action     = 'detail';
      $identitas          = companies::find('1');

      $companypartnership     = companypartnership::all();
      $services               = services::all();
      $billingcompanyservices = billingcompanyservices::all();
      $users                  = users::all();
      $paymentmethodes        = paymentmethodes::all();
      $datenow                = date('Y-m-d');    

      $detail = bookingspaces::find($id);
      return view('partner.bookingspace', compact('identitas','detail','companypartnership','services','billingcompanyservices','users','paymentmethodes','datenow','action'));
      // $detail = bookingspaces::where('id', '=', $id)->where('statuspayment', '=', 'Y')->get();
      // return view('partner.bookingspace', compact('identitas','detail','action'));
    }

    public function bookingspace_print()
    {
      $email      = Auth::user()->email;
      $companypartnership     = companypartnership::all();
      $services               = services::all();
      $billingcompanyservices = billingcompanyservices::all();
      $users                  = users::all();
      $paymentmethodes        = paymentmethodes::all();
      $datenow                = date('Y-m-d');
      $cp         =  companypartnership::where('email', '=', $email)->limit(1)->get();
      foreach($cp as $row3){}
        $no = 1;
      $identitas          = companies::find('1');
      $view = bookingspaces::where('codecompanypartnership', '=', $row3->id)->where('statuspayment', '=', 'Y')->orderBy('id', 'ASC')->get();
      return view('partner.bookingspace_print', compact('identitas','view','companypartnership','services','billingcompanyservices','users','paymentmethodes','datenow'));
        //      $pdf=PDF::loadView('partner.bookingspace_print', ['identitas' => $identitas,'view' => $view, 'companypartnership' => $companypartnership, 'services' => $services, 'billingcompanyservices' => $billingcompanyservices, 'users' => $users, 'paymentmethodes' => $paymentmethodes, 'datenow' => $datenow]);
        // // $pdf=PDF::loadView('website.invoice_print', ['bookingspaces' => $bookingspaces]);
        // return $pdf->download('report-invoice-workshare.pdf');
    }

  }

        // $bookingspaces          = bookingspaces::where('invoice', '=', $invoice)->limit(1)->get();
        // $pdf=PDF::loadView('website.invoice_print', ['bookingspaces' => $bookingspaces]);
        // return $pdf->download($invoice.'-invoice-workshare.pdf');