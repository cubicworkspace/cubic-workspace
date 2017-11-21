@extends('layouts.internal')
@section('title','Dashboard')
@section('content')
                <!-- BEGIN CONTENT BODY -->
                    <div class="page-content">
            <!-- BEGIN PAGE BAR -->
                        <div class="page-bar">
                            <ul class="page-breadcrumb">
                                <li>
                                    <span>@yield('title')</span>
                                </li>
                            </ul>
                        </div>
                        <!-- END PAGE BAR -->
                        <!-- BEGIN PAGE TITLE-->
                        <h1 class="page-title"> @yield('title')</h1>
                        <!-- END PAGE TITLE-->
                        <!-- END PAGE HEADER-->
                        <div class="note note-info">
                            <p> Hello <strong>{{ Auth::user()->name }} [{{ Auth::user()->status }}]</strong>, Welcome to the administrator page of Cubic Workspace </p>
                        </div>
                        <!-- BEGIN DASHBOARD STATS 1-->
                        <div class="row">
                            



                        </div>
                       <!--  -->
                        <div class="clearfix"></div>

@endsection