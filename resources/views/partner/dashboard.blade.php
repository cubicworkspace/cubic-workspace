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
<h1 class="page-title"> @yield('title') 
    <small>User Profile</small>
</h1>

@if($row->status == 'Y')
@else
<div class="row">
    <div class="col-md-12">
        <div class="portlet light form-fit ">
            <div class="alert alert-warning alert-dismissible" role="alert">                
                <i class="fa fa-warning"></i> Account unverified, please contact  <b>{{ $identitas->email }}</b> or  <b>{{ $identitas->phone }}</b>
            </div>
        </div>
    </div>
</div>
@endif                 
<!-- END PAGE HEADER-->
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN PROFILE SIDEBAR -->
        <div class="profile-sidebar">
            <!-- PORTLET MAIN -->
            <div class="portlet light profile-sidebar-portlet ">
                <!-- SIDEBAR USERPIC -->
                <div class="profile-userpic">
                    <img src="{{ asset('upload/companypartnership') }}/{{ $row->logo }}" class="img-responsive" alt=""> </div>
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
                                                    <div class="uppercase profile-stat-title"> {{ $count_companyservices }} </div>
                                                    <div class="uppercase profile-stat-text"> Company Services </div>
                                                </div>
                                                <div class="col-md-4 col-sm-4 col-xs-6">
                                                    <div class="uppercase profile-stat-title"> {{ $count_bookingspaces }} </div>
                                                    <div class="uppercase profile-stat-text"> Booking Spaces  </div>
                                                </div>
                                                <div class="col-md-4 col-sm-4 col-xs-6">
                                                    <div class="uppercase profile-stat-title"> {{ $count_bookingtour }} </div>
                                                    <div class="uppercase profile-stat-text"> Booking Tour </div>
                                                </div>
                                            </div>
                                            <!-- END STAT -->
                                            <div>
                                                <h4 class="profile-desc-title">Profile {{ Auth::user()->name }}</h4>
                                                <span class="profile-desc-text"> {{ $row->profile }}</span>
                                              <!--   <div class="margin-top-20 profile-desc-link">
                                                    <i class="fa fa-"></i>
                                                    <a href="http://www.keenthemes.com">www.keenthemes.com</a>
                                                </div>
                                                <div class="margin-top-20 profile-desc-link">
                                                    <i class="fa fa-twitter"></i>
                                                    <a href="http://www.twitter.com/keenthemes/">@keenthemes</a>
                                                </div>
                                                <div class="margin-top-20 profile-desc-link">
                                                    <i class="fa fa-facebook"></i>
                                                    <a href="http://www.facebook.com/keenthemes/">keenthemes</a>
                                                </div> -->
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
                                                                <a href="#tab_1_3" data-toggle="tab">Change Password</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="portlet-body">
                                                        <div class="tab-content">
                                                            <!-- PERSONAL INFO TAB -->
                                                            <div class="tab-pane active" id="tab_1_1">@include('layouts.flashpartner')
                                                                <form role="form" action="{{ route('partner.editprofile') }}" method="POST" enctype="multipart/form-data">
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
                                                                  @if ($row->favicon)
                                                                <div class="form-group">
                                                                    <!-- <label class="control-label">Favicon</label> -->
                                                                    <img src="{{ asset('upload/companypartnership') }}/{{ $row->favicon }}" width="80">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="control-label">Edit Favicon</label>
                                                                    <input type="file" name="favicon" class="form-control" >
                                                                </div>
                                                                @else
                                                                <div class="form-group">
                                                                    <label class="control-label">Favicon</label>
                                                                    <input type="file" name="favicon" class="form-control" >
                                                                </td>
                                                                @endif
                                                                @if ($row->logo)
                                                                <div class="form-group">
                                                                    <!-- <label class="control-label">Logo</label> -->
                                                                    <img src="{{ asset('upload/companypartnership') }}/{{ $row->logo }}" width="80">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="control-label">Edit Logo</label>
                                                                    <input type="file" name="logo" class="form-control" >
                                                                </div>
                                                                @else
                                                                <div class="form-group">
                                                                    <label class="control-label">Logo</label>
                                                                    <input type="file" name="logo" class="form-control" >
                                                                </div>
                                                                @endif
                                                                <div class="form-group">
                                                                    <label class="control-label">Phone</label>
                                                                    <input type="text" class="form-control" name="phone" value="{{  $row->phone }}" /> 
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="control-label">Address</label>
                                                                    <input type="text" class="form-control" name="address" value="{{ $row->address }}" /> 
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="control-label">Maps</label>
                                                                    <input type="text" class="form-control" name="maps" value="{{ $row->maps }}" /> 
                                                                </div>     

                                                                <div class="form-group">
                                                                    <label class="control-label">City</label> 
                                                                    <select class="form-control" id="id" value="name" name="codecity">
                                                                        <option value="{{ !empty($row->city->id) ? $row->city->id : '' }}">{{ !empty($row->city->name) ? $row->city->name : '-- Select City --' }} </option>
                                                                        @foreach($city as $ct)
                                                                        <option value="{{ $ct->id }}">{{ $ct->name }}</option>
                                                                        @endforeach
                                                                    </select>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="control-label">Country</label> 
                                                                    <select class="form-control" id="id" value="name" name="codecountry">
                                                                        <option value="{{ !empty($row->country->id) ? $row->country->id : '' }}">{{ !empty($row->country->name) ? $row->country->name : '-- Select Country --' }} </option>
                                                                        @foreach($country as $coun)
                                                                        <option value="{{ $coun->id }}">{{ $coun->name }}</option>
                                                                        @endforeach
                                                                    </select>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="control-label">Profile</label> 
                                                                    <input type="text" name="profile" value="{{ $row->profile }}" class="form-control" >
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="control-label">History</label>
                                                                    <input type="text" name="history" value="{{ $row->history }}" class="form-control" >
                                                                </div>                                                     
                                                                <div class="form-group">
                                                                    <label class="control-label">Description</label>
                                                                    <textarea name="description"  class="form-control" >{{ $row->description }}</textarea>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="control-label">Vision</label>
                                                                    <textarea name="vision"  class="form-control" >{{ $row->vision }}</textarea>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="control-label">Mision</label>
                                                                    <textarea name="mision"  class="form-control" >{{ $row->mision }}</textarea>
                                                                </div> 
                                                                <div class="form-group">
                                                                    <label class="control-label">Faq</label>

                                                    <textarea class="ckeditor form-control" name="faq" rows="6" data-error-container="#editor2_error">{{ $row->faq }}</textarea>
                                                    <div id="editor2_error"> </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="control-label">Infromation</label>
                                                                    <input type="text" name="information" value="{{ $row->information }}" class="form-control" >
                                                                </div>
                                                                <div class="margiv-top-10">
                                                                    <input type="Submit" name="editprofile" class="btn green" value="Save Changes">
                                                                </div>
                                                            </form>
                                                        </div>
                                                        <!-- END PERSONAL INFO TAB -->
                                                        
                                                                <!-- CHANGE PASSWORD TAB -->
                                                                <div class="tab-pane" id="tab_1_3">
                                                                <form role="form" action="{{ route('partner.editprofilepassword') }}" method="POST" >
                                                                 {{ csrf_field() }}
                                                                 <input type="hidden" name="id" value="{{ Auth::user()->id }}">
                                                                 <input type="hidden" name="email" value="{{ Auth::user()->email }}">
                                                                            <div class="form-group">
                                                                                <label class="control-label">New Password</label>
                                                                                <input type="password" name="password" class="form-control" required /> 
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label class="control-label">Re-type New Password</label>
                                                                                <input type="password" name="confirm_password" class="form-control" required /> </div>
                                                                            <div class="margin-top-10">
                                                                                <input type="submit" name="save" class="btn green" value="Save Password"> 
                                                                                <a href="{{ route('partner.dashboard') }}" class="btn default"> Cancel </a>
                                                                            </div>
                                                                                </form>
                                                                            </div>
                                                                            <!-- END CHANGE PASSWORD TAB -->
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- END PROFILE CONTENT -->

@endforeach
@endsection