<?php

namespace App\Http\Controllers;

use DB;
use App\companyservices;
use App\tagservices;
use App\companypartnership;
use App\services;


use Illuminate\Http\Request;

class CompanyServicesController extends Controller
{
  
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
        $no = 1;
        $view = companyservices::all();
        return view('internal.companyservices.view', compact('view'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
        $companyservices = DB::select('select max(codecompanyservices) as idMaks from companyservices');
        foreach($companyservices as $row3){}
        $nomor  = $row3->idMaks; 
        $noRand = (int) substr($row3->idMaks, 3, 3);
        $noRand++;  
        $char   = "COS";
        $no   =  $char . sprintf("%03s", $noRand);
        $tagservices = tagservices::pluck('codetagservices', 'id');
        $companypartnership = companypartnership::pluck('name', 'id');
        $services = services::pluck('name', 'id');
        return view('internal.companyservices.create', compact('no','tagservices','companypartnership','services'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $companyservices = new companyservices;
        $this->validate($request, [            
             'name' => 'required']);
        $companyservices->name = $request->name;
        $companyservices->codecompanyservices = $request->codecompanyservices;
        $companyservices->codeservices = $request->codeservices;
        $companyservices->codecompanypartnership = $request->codecompanypartnership;
        $companyservices->codetagservices = $request->codetagservices;
        $companyservices->information = $request->information;
        $companyservices->quota = $request->quota;
        $companyservices->price = $request->price;
        $companyservices->quotauser = $request->quotauser;
        $companyservices->information = $request->information;
        $companyservices->registerdate = date('Y-m-d H:i:s');
        $companyservices->status = $request->status;
        $companyservices->save();
        \Session::flash('success', 'Company Services data has been successfully added!,');
        return redirect('/companyservices');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $tagservices = tagservices::pluck('codetagservices', 'id');
        $companypartnership = companypartnership::pluck('name', 'id');
        $services = services::pluck('name', 'id');
        $edit = companyservices::find($id);
        return view('internal.companyservices.edit', compact('edit','tagservices','companypartnership','services'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        
        $companyservices = companyservices::find($id);
        $this->validate($request, [            
             'name' => 'required']);
        $companyservices->name = $request->name;
        $companyservices->codeservices = $request->codeservices;
        $companyservices->codecompanypartnership = $request->codecompanypartnership;
        $companyservices->codetagservices = $request->codetagservices;
        $companyservices->information = $request->information;
        $companyservices->quota = $request->quota;
        $companyservices->price = $request->price;
        $companyservices->quotauser = $request->quotauser;
        $companyservices->information = $request->information;
        $companyservices->registerdate = date('Y-m-d H:i:s');
        $companyservices->status = $request->status;
        $companyservices->save();
        \Session::flash('success', 'Company Services data has been edited successfully!,');
        return redirect('/companyservices');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $companyservices = companyservices::find($id);
        $companyservices->delete();
         \Session::flash('warning', 'Company Services data has been successfully deleted!,');
        return redirect('/companyservices');
    }
}
