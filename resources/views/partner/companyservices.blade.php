@extends('layouts.partner')
@section('title','Company Services')
@section('content')
    <!-- BEGIN THEME PANEL -->
                    <h1 class="page-title">@yield('title') </h1>
                    <div class="page-bar">
                        <ul class="page-breadcrumb">
                            <li>
                                <i class="icon-home"></i>
                                <a href="{{ route('partner.dashboard') }}">Dashboard</a>
                                <i class="fa fa-angle-right"></i>
                            </li>
                            <li>
                                <span>@yield('title')</span>
                            </li>
                        </ul>
                        
                    </div>
                    <!-- END PAGE HEADER-->
                  
                            <!-- BEGIN EXAMPLE TABLE PORTLET-->
                            <div class="portlet light ">
                                <div class="portlet-title">
                                    <div class="caption font-dark">
                                        <i class="icon-settings font-dark"></i>
                                        <span class="caption-subject bold uppercase">Buttons</span>
                                    </div>
                                    <div class="tools"> </div>
                                </div>
                                <div class="portlet-body">
                                    <table class="table table-striped table-bordered table-hover" id="sample_1">
                                        <thead>
                                            <tr>
                                                <th> Rendering engine </th>
                                                <th> Browser </th>
                                                <th> Platform(s) </th>
                                                <th> Engine version </th>
                                                <th> CSS grade </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td> Trident </td>
                                                <td> Internet Explorer 4.0 </td>
                                                <td> Win 95+ </td>
                                                <td> 4 </td>
                                                <td> X </td>
                                            </tr>
                                            <tr>
                                                <td> Trident </td>
                                                <td> Internet Explorer 5.0 </td>
                                                <td> Win 95+ </td>
                                                <td> 5 </td>
                                                <td> C </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- END EXAMPLE TABLE PORTLET-->
                        </div>
                    </div>
@endsection