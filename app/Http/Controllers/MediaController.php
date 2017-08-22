<?php

namespace App\Http\Controllers;


use DB;
use App\media;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;

class MediaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $no = 1;
        $view = media::all();
        return view('internal.media.view', compact('view'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
       
        return view('internal.media.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {        
        $media= new media;

        $extention = Input::file('image')->getClientOriginalExtension();
        $filename = rand(11111,99999).'.'. $extention;
        $request->file('image')->move(
            base_path() . '/public/upload/media/', $filename
        );

        $this->validate($request, [
             'codecategorymedia' => 'required',
             'codemedia' => 'required',
             'name' => 'required',
             'url' => 'required']);
        $media->codecategorymedia= $request->codecategorymedia;
        $media->codemedia   = $request->codemedia;
        $media->name        = $request->name;
        $media->url         = $request->url;
        $media->date        = $request->date;
        $media->writer       = $request->writer;
        $media->image       = $filename;
        $media->status      = $request->status;
        $media->save();
        \Session::flash('success', 'media data has been successfully added!,');
        return redirect('/media');
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
        $edit = media::find($id);
        return view('internal.media.edit', compact('edit'));
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
        $media= media::find($id);

        $image = Input::file('image');
        if($image) {  
            $extention = Input::file('image')->getClientOriginalExtension();
            $filename = rand(11111,99999).'.'. $extention;
            $request->file('image')->move(
                base_path() . '/public/upload/media/', $filename
            );

            $this->validate($request, [
                 'codecategorymedia' => 'required',
                 'codemedia' => 'required',
                 'name' => 'required',
                 'url' => 'required']);
            $media->codecategorymedia= $request->codecategorymedia;
            $media->codemedia   = $request->codemedia;
            $media->name        = $request->name;
            $media->url         = $request->url;
            $media->date        = $request->date;
            $media->writer      = $request->writer;
            $media->image       = $filename;
            $media->status      = $request->status;
            $media->save();
            \Session::flash('success', 'Media data has been edited successfully!,');
            return redirect('/media');
        } else {

            $this->validate($request, [
                 'codecategorymedia' => 'required',
                 'codemedia' => 'required',
                 'name' => 'required',
                 'url' => 'required']);
            $media->codecategorymedia= $request->codecategorymedia;
            $media->codemedia   = $request->codemedia;
            $media->name        = $request->name;
            $media->url         = $request->url;
            $media->date        = $request->date;
            $media->writer      = $request->writer;
            $media->status      = $request->status;
            $media->save();
            \Session::flash('success', 'Media data has been edited successfully!,');
            return redirect('/media');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $media = media::find($id);
        Storage::delete('public/upload/media'.'/'.$media->image);
        $media->delete();
        \Session::flash('warning', 'Media data has been successfully deleted!,');
        return redirect('/media');
    }
}
