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

use App\Http\Requests; 
use App\Http\Requests\companyservicesRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Hash;
use Session;

class WebsiteController extends Controller
{
  

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $media              = media::find('4');
        $header             = informasicompanies::where('categoryinfromasi', '=', 'HEADER')
                                                 ->where('status', '=', 'Y')->limit(3)->get();
        $topbasecamp        = companypartnership::where('codetagservices', '=', '3')
                                                 ->where('status', '=', 'Y')->limit(4)->get();
        $specialpackages    = companyservices::where('codetagservices', '=', '5')
                                                 ->where('status', '=', 'Y')->limit(3)->get();
        $services           = informasicompanies::where('categoryinfromasi', '=', 'SERVICES')
                                                 ->where('status', '=', 'Y')->limit(3)->get();
        $testimonial        = testimonials::where('status', '=', 'Y')->limit(2)->get();
        $city               = citys::pluck('name','id');
        $services2           = services::pluck('name','id');
        return view('website.index', compact('media','header','topbasecamp','specialpackages','services','testimonial','city','services2'));
    }

    public function package_list()
    {
        $companyservices          = companyservices::paginate(10);
        $count_companyservices    = companyservices::count();
        $city                     = citys::pluck('name','id');
        $services                 = services::pluck('name','id');
        return view('website.package_list', compact('companyservices','count_companyservices','city','services'));
    }

    public function package_search(Request $request) {
        $companyservices          = companyservices::paginate(10);
        $count_companyservices    = companyservices::count();
        $city                     = citys::pluck('name','id');
        $services                 = services::pluck('name','id');
        
        $q   = trim($request->input('q'));

        if (! empty($q)) {
            $codeservices = $request->input('codeservices');
            $codecity      = $request->input('codecity');

            // Query
            $query          = companyservices::where('name', 'LIKE', '%' . $q. '%');
            (! empty($codeservices)) ? $query->where('codeservices', $codeservices) : '';
            (! empty($codecity)) ? $query->where('codecity', $codecity) : '';
            $companyservices = $query->paginate(10);

            // URL Links count_companyservices
            $count_companyservices = (! empty($codeservices)) ? $companyservices->appends(['codeservices' => $codeservices]) : '';
            $count_companyservices = (! empty($codecity)) ? $count_companyservices = $companyservices->appends(['codecity' => $codecity]) : '';
            $count_companyservices = $companyservices->appends(['q' => $q]);

            $count_companyservices = $companyservices->total();
            return view('website.package_list', compact('companyservices','count_companyservices','city','services','q','count_companyservices'));
        }

        return redirect('package');
    }

    public function package_detail($id, $name='')
    {
        $bookingspaces            = bookingspaces::paginate(10);
        $companyservices          = companyservices::findOrFail($id);
        $mediacompanyservices     = mediacompanyservices::where('codecompanyservices', '=', $id)
                                                 ->where('status', '=', 'Y')->get();
        return view('website.package_detail', compact('companyservices','mediacompanyservices'));
    }

    public function package_searchroom(Request $request) {
        $codecompanyservices = $request->input('codecompanyservices');
        $datein        = $request->input('datein');
        $dateout       = $request->input('dateout');
        $bookingspaces = bookingspaces::where('codecompanyservices',Input::get('codecompanyservices'))
                                        ->where('datein',Input::get('datein'))
                                        ->where('dateout',Input::get('dateout'))->first();
        // $billingcompanyservices     = billingcompanyservices::where('codecompanyservices', '=', $codecompanyservices)->get();

        $billingcompanyservices = DB::select("select * from billingcompanyservices WHERE codecompanyservices ='$codecompanyservices'");
        foreach($billingcompanyservices as $row3){}

        if (is_null($bookingspaces) && $row3->currentquota > 0) {
        \Session::flash('success', '<b class="text-success">Available Room!</b> from <b>'.date('d F Y', strtotime($datein)).'</b> to <b>'.date('d F Y', strtotime($dateout)).'</b>');
            return redirect('/website/package/detail/'.$codecompanyservices.'/confirmation/');
        }
        \Session::flash('error', '<b class="text-danger">No Available Room!</b> from <b>'.date('d F Y', strtotime($datein)).'</b> to <b>'.date('d F Y', strtotime($dateout)).'</b>');
            return redirect('/website/package/detail/'.$codecompanyservices.'/confirmation/');
        
    }

    public function about()
    {
         return view('website.about');
    }

    public function event()
    {
         return view('website.event');
    }

    public function contact()
    {
         return view('website.contact');
    }

    public function newsletter()
    {
         return view('website.newsletter');
    }

    public function subscriber(Request $request)
    {
        $subscriber = subscribers::where('email',Input::get('email'))->first();
        if (is_null($subscriber)) {
            $subscriber = new subscribers;
            $subscriber->name        = '-';
            $subscriber->email       = $request->email;
            $subscriber->status      = 'N';
            $subscriber->save();
        \Session::flash('success', 'Thank you for doing Newsletter!');
        return redirect('/');
        } 
        \Session::flash('warning', 'Your email is already registered in the Newsletter!');
        return redirect('/');
    
    }

    public function bookingtour(Request $request)
    {
            $bookingtour = new bookingtour;
            $bookingtour->codecompanyservices     = $request->codecompanyservices;
            $bookingtour->codecompanypartnership  = $request->codecompanypartnership;
            $bookingtour->date                    = $request->date;
            $bookingtour->time                    = $request->time;
            $bookingtour->email                   = $request->email;
            $bookingtour->phone                   = $request->phone;
            $bookingtour->status                  = 'N';
            $bookingtour->save();
        \Session::flash('success', 'Thank you for doing Booking Tour!');
        return redirect('/website/package/detail/'.$request->codecompanyservices.'/confirmation/');
    }

    public function booking($id, $name='')
    {
        $no = rand(11111,99999);
        $companyservices          = companyservices::findOrFail($id);
        $paymentmethodes          = paymentmethodes::all();
        return view('website.booking', compact('companyservices','paymentmethodes','no'));
    }

    public function bookingroom(Request $request)
    {
        $members     = members::where('codeuser', '=', $request->input('codeuser'))
                                                 ->where('status', '=', 'Y')->limit(1)->get();
        $bookingspaces = DB::select('select max(codebookingspace) as idMaks from bookingspaces');
        foreach($bookingspaces as $row3){}
        $nomor  = $row3->idMaks; 
        $noRand = (int) substr($row3->idMaks, 3, 3);
        $noRand++;  
        $char   = "CBS";
        $no   =  $char . sprintf("%03s", $noRand);
        $data = ([
            "codecompanyservices" => $request->input('id'), 
            "price" => $request->input('price'), 
            "codeuser" => $request->input('codeuser'), 
            "datein" => $request->input('datein'), 
            "dateout" => $request->input('dateout'), 
            "name" => $request->input('name'), 
            "email" => $request->input('email'), 
            "phone" => $request->input('phone'), 
            "codepaymentmethode" => $request->input('codepaymentmethode'),
            "invoice" => $request->input('no')
        ]);
        // $data = [
        //     $request->input('id'), 
        //     $request->input('price'), 
        //      $request->input('codeuser'), 
        //     $request->input('datein'), 
        //     $request->input('dateout'), 
        //      $request->input('name'), 
        //      $request->input('email'), 
        //      $request->input('phone'), 
        //      $request->input('codepaymentmethode'),
        //      $request->input('no')
        // ];
        // $value = ['codecompanyservices','price','codeuser','datein','dateout','name','email','phone','codepaymentmethode','invoice'];

        $datein     = $request->input('datein');
        $dateout    = $request->input('dateout');
        $selisih    = strtotime($dateout) -  strtotime($datein);
        $hari       = $selisih/(60*60*24);
        $total      = ($hari * $request->input('price'));

        $companyservices          = companyservices::findOrFail($request->id);
        return view('website.bookingroom', compact('no','companyservices','data','hari','total','value','members'));
    }

    public function bookingsend(Request $request)
    {
        $bookingspace = new bookingspaces;
        $bookingspace->codebookingspace = $request->codebookingspace;
        $bookingspace->codecompanypartnership = $request->codecompanypartnership;
        $bookingspace->codeservices = $request->codeservices;
        $bookingspace->codecompanyservices = $request->codecompanyservices;
        $bookingspace->codeuser = $request->codeuser;
        $bookingspace->codepaymentmethode = $request->codepaymentmethode;
        $bookingspace->invoice = $request->invoice;
        $bookingspace->name = $request->name;
        $bookingspace->email = $request->email;
        $bookingspace->phone = $request->phone;
        $bookingspace->address = $request->address;
        //$bookingspace->quota = $request->quota;
        //$bookingspace->quotauser = $request->quotauser;
        $bookingspace->price   = $request->price;
        $bookingspace->totalprice = $request->totalprice;
        $bookingspace->datein = date('Y-m-d H:i:s');
        $bookingspace->dateout = date('Y-m-d H:i:s');
        // $bookingspace->currentquotauser = $request->currentquotauser;
        // $bookingspace->nowquotauser = $request->nowquotauser;
        // $bookingspace->information = $request->information;
        $bookingspace->dateregister = date('Y-m-d H:i:s');
        $bookingspace->status      = 'N';
        $bookingspace->save();
        \Session::flash('thanks', '<p>Your confirmation number is <span class="text-primary font700">'.$request->invoice.'</span></p>');
        return redirect('/website/package/bookingroom/thanks/'.$request->invoice);
    }

    public function bookingthanks($invoice='')
    {        
        $bookingspaces          = bookingspaces::where('invoice', '=', $invoice)->limit(1)->get();
        return view('website.bookingthanks', compact('bookingspaces'));
    }


    public function invoice_print($invoice='')
    {
        
        $bookingspaces          = bookingspaces::where('invoice', '=', $invoice)->limit(1)->get();
        return view('website.invoice_print', compact('bookingspaces'));
    }


    public function loginmember()
    {
        $users = DB::select('select max(codeuser) as idMaks from users');
        foreach($users as $row3){}
        $nomor  = $row3->idMaks; 
        $noRand = (int) substr($row3->idMaks, 3, 3);
        $noRand++;  
        $char   = "USR";
        $no   =  $char . sprintf("%03s", $noRand);
        return view('website.login', compact('no'));
    }

    public function register(Request $request)
    {
        $user = users::where('email',Input::get('email'))->first();
        if (is_null($user)) {
            $user = new users;
            $member = new members;
                $extention = Input::file('image')->getClientOriginalExtension();
                $filename = rand(11111,99999).'.'. $extention;
                $request->file('image')->move(
                    base_path() . '/public/upload/member/', $filename
                );
            $user->name = $request->name;
            $user->codeuser = $request->codeuser;
            $user->lastlogin = date('Y-m-d H:i:s');
            $user->registerdate = date('Y-m-d H:i:s');
            $user->email = $request->email;
            $user->password = Hash::make($request->password);

            $member->codeuser = $request->codeuser;
            $member->email = $request->email;
            $member->institution = $request->institution;
            $member->birthday = $request->birthday;
            $member->phone = $request->phone;
            $member->address =$request->address;
            $member->image = $filename;
            $member->description = $request->description;
            $member->information = $request->information;

            $member->save();
            $user->save();
        \Session::flash('success', 'Thank you for registering as a member!');
        return redirect('/website/loginmember');
        } 
        \Session::flash('warning', 'Your email is registered as a member!');
        return redirect('/website/loginmember');
    
    }

    public function dashboard()
    {
         return view('website.dashboard');
    }
   
}
