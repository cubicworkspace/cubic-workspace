@extends('layouts.partner')
@section('title','Dashboard')
@section('content') 
                    @foreach($com as $row) 
                    @if($row->codepartner == '' )          
                    <div id="confirmationModal" class="modal fade bs-modal-lg in" tabindex="-1" role="dialog" aria-hidden="true" style="display: block; padding-right: 10px;">
                    <div class="modal-dialog">
                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-body">
                            <form role="form" action="{{ route('partner.editid') }}" method="POST">
                                {{ csrf_field() }}
                                <input type="hidden" name="id" value="{{ Auth::user()->id }}">
                                <input type="hidden" name="email" value="{{ Auth::user()->email }}">
                                    <div class="note note-success">
                                        <h4 class="block">Welcome to Dashboard Partnership, <b>{{ Auth::user()->name }}</b> </h4>                               
                                        <p align="justify">  {{ strip_tags($identitas->description) }} </p>
                                    </div>
                            </div>
                            <div class="modal-footer">
                             <input type="Submit" name="editprofile" class="btn green" value="Close">
                            </div>
                            </form>
                        </div>
                        </div>
                    </div>
                    @else
                    @endif
                    @endforeach
                    <h1 class="page-title"> @yield('title') 
                        <small>User Profile</small>
                    </h1>
                    <!-- END PAGE HEADER-->
                    <div class="row">
                        <div class="col-md-12">
                            <!-- BEGIN PROFILE SIDEBAR -->
                            <div class="profile-sidebar">
                                <!-- PORTLET MAIN -->
                                <div class="portlet light profile-sidebar-portlet ">
                                    <!-- SIDEBAR USERPIC -->
                                    <div class="profile-userpic">
                                        <img src="{{ asset('upload/companypartnership') }}/{{ Auth::user()->image }}" class="img-responsive" alt=""> </div>
                                    <!-- END SIDEBAR USERPIC -->
                                    <!-- SIDEBAR USER TITLE -->
                                    <div class="profile-usertitle">
                                        <div class="profile-usertitle-name"> {{ Auth::user()->name }}</div>
                                        <div class="profile-usertitle-job"> {{ Auth::user()->address }} </div>
                                    </div>
                                    <!-- END SIDEBAR USER TITLE -->
                                    <!-- SIDEBAR BUTTONS -->
                                    <div class="profile-userbuttons">
                                        <button type="button" class="btn btn-circle green btn-sm">{{ Auth::user()->email }}</button>
                                        <button type="button" class="btn btn-circle red btn-sm">{{ Auth::user()->phone }}</button>
                                    </div>
                                    <!-- END SIDEBAR BUTTONS -->
                                    <!-- SIDEBAR MENU -->
                                    <div class="profile-usermenu">
                                        <ul class="nav">
                                           <!--  <li>
                                                <a href="page_user_profile_1.html">
                                                    <i class="icon-home"></i> Overview </a>
                                            </li> 
                                            <li>
                                                <a href="page_user_profile_1_help.html">
                                                    <i class="icon-info"></i> Help </a>
                                            </li>-->
                                            <li class="active">
                                                <a href="">
                                                    <i class="icon-settings"></i> Account Settings </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <!-- END MENU -->
                                </div>
                                <!-- END PORTLET MAIN -->
                                <!-- PORTLET MAIN -->
                                <div class="portlet light ">
                                    <!-- STAT -->
                                    <div class="row list-separated profile-stat">
                                        <div class="col-md-4 col-sm-4 col-xs-6">
                                            <div class="uppercase profile-stat-title"> 37 </div>
                                            <div class="uppercase profile-stat-text"> Projects </div>
                                        </div>
                                        <div class="col-md-4 col-sm-4 col-xs-6">
                                            <div class="uppercase profile-stat-title"> 51 </div>
                                            <div class="uppercase profile-stat-text"> Tasks </div>
                                        </div>
                                        <div class="col-md-4 col-sm-4 col-xs-6">
                                            <div class="uppercase profile-stat-title"> 61 </div>
                                            <div class="uppercase profile-stat-text"> Uploads </div>
                                        </div>
                                    </div>
                                    <!-- END STAT -->
                                    <div>
                                        <h4 class="profile-desc-title">About Marcus Doe</h4>
                                        <span class="profile-desc-text"> Lorem ipsum dolor sit amet diam nonummy nibh dolore. </span>
                                        <div class="margin-top-20 profile-desc-link">
                                            <i class="fa fa-globe"></i>
                                            <a href="http://www.keenthemes.com">www.keenthemes.com</a>
                                        </div>
                                        <div class="margin-top-20 profile-desc-link">
                                            <i class="fa fa-twitter"></i>
                                            <a href="http://www.twitter.com/keenthemes/">@keenthemes</a>
                                        </div>
                                        <div class="margin-top-20 profile-desc-link">
                                            <i class="fa fa-facebook"></i>
                                            <a href="http://www.facebook.com/keenthemes/">keenthemes</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- END PORTLET MAIN -->
                            </div>
                            <!-- END BEGIN PROFILE SIDEBAR -->
                            <!-- BEGIN PROFILE CONTENT -->
                            <div class="profile-content">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="portlet light ">
                                            <div class="portlet-title tabbable-line">
                                                <div class="caption caption-md">
                                                    <i class="icon-globe theme-font hide"></i>
                                                    <span class="caption-subject font-blue-madison bold uppercase">Profile Account</span>
                                                </div>
                                                <ul class="nav nav-tabs">
                                                    <li class="active">
                                                        <a href="#tab_1_1" data-toggle="tab">Personal Info</a>
                                                    </li>
                                                    <li>
                                                        <a href="#tab_1_2" data-toggle="tab">Change Avatar</a>
                                                    </li>
                                                    <li>
                                                        <a href="#tab_1_3" data-toggle="tab">Change Password</a>
                                                    </li>
                                                    <li>
                                                        <a href="#tab_1_4" data-toggle="tab">Privacy Settings</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="portlet-body">
                                                <div class="tab-content">
                                                    <!-- PERSONAL INFO TAB -->
                                                    <div class="tab-pane active" id="tab_1_1">@include('layouts.flashpartner')
                                                        <form role="form" action="{{ route('partner.editprofile') }}" method="POST">
                                                         {{ csrf_field() }}
                                                            <input type="hidden" name="id" value="{{ Auth::user()->id }}">
                                                            <input type="hidden" name="email" value="{{ Auth::user()->email }}">
                                                            <div class="form-group">
                                                                <label class="control-label">Email</label>
                                                                <input type="text" class="form-control" name="email" value="{{ Auth::user()->email }}" readonly /> 
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label">Name Company</label>
                                                                <input type="text" class="form-control" name="name" value="{{ Auth::user()->name }}" /> 
                                                            </div>
                                                           
                                                            <div class="margiv-top-10">
                                                                <input type="Submit" name="editprofile" class="btn green" value="Save Changes">
                                                            </div>
                                                        </form>
                                                    </div>
                                                    <!-- END PERSONAL INFO TAB -->
                                                    <!-- CHANGE AVATAR TAB -->
                                                    <div class="tab-pane" id="tab_1_2">
                                                        <p> Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
                                                            eiusmod. </p>
                                                        <form action="#" role="form">
                                                            <div class="form-group">
                                                                <div class="fileinput fileinput-new" data-provides="fileinput">
                                                                    <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
                                                                        <img src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image" alt="" /> </div>
                                                                    <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"> </div>
                                                                    <div>
                                                                        <span class="btn default btn-file">
                                                                            <span class="fileinput-new"> Select image </span>
                                                                            <span class="fileinput-exists"> Change </span>
                                                                            <input type="file" name="..."> </span>
                                                                        <a href="javascript:;" class="btn default fileinput-exists" data-dismiss="fileinput"> Remove </a>
                                                                    </div>
                                                                </div>
                                                                <div class="clearfix margin-top-10">
                                                                    <span class="label label-danger">NOTE! </span>
                                                                    <span>Attached image thumbnail is supported in Latest Firefox, Chrome, Opera, Safari and Internet Explorer 10 only </span>
                                                                </div>
                                                            </div>
                                                            <div class="margin-top-10">
                                                                <a href="javascript:;" class="btn green"> Submit </a>
                                                                <a href="javascript:;" class="btn default"> Cancel </a>
                                                            </div>
                                                        </form>
                                                    </div>
                                                    <!-- END CHANGE AVATAR TAB -->
                                                    <!-- CHANGE PASSWORD TAB -->
                                                    <div class="tab-pane" id="tab_1_3">
                                                        <form action="#">
                                                            <div class="form-group">
                                                                <label class="control-label">Current Password</label>
                                                                <input type="password" class="form-control" /> </div>
                                                            <div class="form-group">
                                                                <label class="control-label">New Password</label>
                                                                <input type="password" class="form-control" /> </div>
                                                            <div class="form-group">
                                                                <label class="control-label">Re-type New Password</label>
                                                                <input type="password" class="form-control" /> </div>
                                                            <div class="margin-top-10">
                                                                <a href="javascript:;" class="btn green"> Change Password </a>
                                                                <a href="javascript:;" class="btn default"> Cancel </a>
                                                            </div>
                                                        </form>
                                                    </div>
                                                    <!-- END CHANGE PASSWORD TAB -->
                                                    <!-- PRIVACY SETTINGS TAB -->
                                                    <div class="tab-pane" id="tab_1_4">
                                                        <form action="#">
                                                            <table class="table table-light table-hover">
                                                                <tr>
                                                                    <td> Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus.. </td>
                                                                    <td>
                                                                        <div class="mt-radio-inline">
                                                                            <label class="mt-radio">
                                                                                <input type="radio" name="optionsRadios1" value="option1" /> Yes
                                                                                <span></span>
                                                                            </label>
                                                                            <label class="mt-radio">
                                                                                <input type="radio" name="optionsRadios1" value="option2" checked/> No
                                                                                <span></span>
                                                                            </label>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Enim eiusmod high life accusamus terry richardson ad squid wolf moon </td>
                                                                    <td>
                                                                        <div class="mt-radio-inline">
                                                                            <label class="mt-radio">
                                                                                <input type="radio" name="optionsRadios11" value="option1" /> Yes
                                                                                <span></span>
                                                                            </label>
                                                                            <label class="mt-radio">
                                                                                <input type="radio" name="optionsRadios11" value="option2" checked/> No
                                                                                <span></span>
                                                                            </label>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Enim eiusmod high life accusamus terry richardson ad squid wolf moon </td>
                                                                    <td>
                                                                        <div class="mt-radio-inline">
                                                                            <label class="mt-radio">
                                                                                <input type="radio" name="optionsRadios21" value="option1" /> Yes
                                                                                <span></span>
                                                                            </label>
                                                                            <label class="mt-radio">
                                                                                <input type="radio" name="optionsRadios21" value="option2" checked/> No
                                                                                <span></span>
                                                                            </label>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td> Enim eiusmod high life accusamus terry richardson ad squid wolf moon </td>
                                                                    <td>
                                                                        <div class="mt-radio-inline">
                                                                            <label class="mt-radio">
                                                                                <input type="radio" name="optionsRadios31" value="option1" /> Yes
                                                                                <span></span>
                                                                            </label>
                                                                            <label class="mt-radio">
                                                                                <input type="radio" name="optionsRadios31" value="option2" checked/> No
                                                                                <span></span>
                                                                            </label>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <!--end profile-settings-->
                                                            <div class="margin-top-10">
                                                                <a href="javascript:;" class="btn red"> Save Changes </a>
                                                                <a href="javascript:;" class="btn default"> Cancel </a>
                                                            </div>
                                                        </form>
                                                    </div>
                                                    <!-- END PRIVACY SETTINGS TAB -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- END PROFILE CONTENT -->
@endsection