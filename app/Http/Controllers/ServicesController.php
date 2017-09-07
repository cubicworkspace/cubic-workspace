<?php

namespace App\Http\Controllers;

use DB;
use App\services;
use App\categoryservices;

use Illuminate\Http\Request;

class ServicesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $no = 1;
        $view = services::all();
        return view('internal.services.view', compact('view'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $service = DB::select('select max(codeservices) as idMaks from services');
        foreach($service as $row3){}
        $nomor  = $row3->idMaks; 
        $noRand = (int) substr($row3->idMaks, 3, 3);
        $noRand++;  
        $char   = "SER";
        $no   =  $char . sprintf("%03s", $noRand);
        $categoryservice = categoryservices::pluck('name', 'id');
        return view('internal.services.create', compact('no','categoryservice'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $service = new services;
        $this->validate($request, [
             'name' => 'required',
             'description' => 'required']);
        $service->codeservices = $request->codeservices;
        $service->codecategoryservices = $request->codecategoryservices;
        $service->name = $request->name;
        $service->description = $request->description;
        $service->status = $request->status;
        $service->save();
        \Session::flash('success', 'Services data has been successfully added!,');
        return redirect('/services');
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
        $categoryservice = categoryservices::pluck('name', 'id');
        $edit = services::find($id);
        return view('internal.services.edit', compact('edit','categoryservice'));
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
         $service = services::find($id);
        $this->validate($request, [
             'name' => 'required',
             'description' => 'required']);
        $service->name = $request->name;
        $service->description = $request->description;
        $service->codecategoryservices = $request->codecategoryservices;
        $service->status = $request->status;
        $service->save();
        \Session::flash('success', 'Services data has been edited successfully!,');
        return redirect('/services');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $service = services::find($id);
        $service->delete();
         \Session::flash('warning', 'Services data has been successfully deleted!,');
        return redirect('/services');
    }
}
