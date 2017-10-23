@extends('layouts.internal')
@section('title','Edit Users')
@section('content')  
 <!-- BEGIN CONTENT BODY -->
                    <div class="page-content">
                        <!-- BEGIN PAGE HEADER-->
                        <!-- BEGIN PAGE BAR -->
                        <div class="page-bar">
                            <ul class="page-breadcrumb">
                                <li>
                                    <a href="{{ url('/dashboard') }}">Home</a>
                                    <i class="fa fa-circle"></i>
                                </li>
                                <li>
                                    <a href="{{ url('/user') }}">Users</a>
                                    <i class="fa fa-circle"></i>
                                </li>
                                <li>
                                    <span>@yield('title')</span>
                                </li>
                            </ul>
                        </div>
                        <!-- END PAGE BAR -->
                        <!-- BEGIN PAGE TITLE-->
                        <h1 class="page-title">@yield('title')  </h1>
                        <!-- END PAGE TITLE-->
                        <!-- END PAGE HEADER-->
                        <div class="row">
                            <div class="col-md-12">
                                <!-- BEGIN EXAMPLE TABLE PORTLET-->
                                <div class="portlet light bordered">
                                    <div class="portlet-title">
                                        <div class="caption font-dark">
                                            <i class="icon-settings font-dark"></i>
                                            <span class="caption-subject bold uppercase"> Managed @yield('title')</span>
                                        </div>
                                    </div>
                                    @if (count($errors)>0)
										<div class="alert alert-danger alert-dismissible">
						                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
						                <h4><i class="icon fa fa-ban"></i> Error!</h4>
											@foreach ($errors->all() as $error)
							 				{{$error}}
											@endforeach
											
						              </div>
									@endif
						            <form action="/user/{{ $edit->id }}" method="POST" enctype="multipart/form-data">
									{{ csrf_field() }}
									{{ method_field('PUT') }}
									<div class="table-responsive">
						            <table class="table table-hover table-striped table-bordered">
						            <tr>
										<td>Code User</td>
										<td>:</td>
										<td><b>{{ $edit->codeuser }}</b></td>
									</tr>
						            <tr>
										<td>Name</td>
										<td>:</td>
										<td><input type="text" name="name" value="{{ $edit->name }}" class="form-control"></td>
									</tr>
						            <tr>
										<td>Email</td>
										<td>:</td>
										<td><input type="text" name="email" value="{{ $edit->email }}" class="form-control"></td>
									</tr>
						            <tr>
										<td>Password</td>
										<td>:</td>
										<td><input type="password" name="password" class="form-control"><span class="alert-danger">*Leave passwords by default</span></td>
									</tr>
									<tr>
										<td>Status</td>
										<td>:</td>
										<td> <label class="radio-inline"> 
						                     <input type="radio" name="status" id="USER" class="icheck" value="USER" {{ $USER = ($edit->status=='USER')?'checked':''}} > USER
						                    </label> 
						                     <label class="radio-inline"> 
						                     <input type="radio"  name="status" id="ADMIN PARTNERSHIP" class="icheck" value="ADMIN PARTNERSHIP" {{ $ADP = ($edit->status=='ADMIN PARTNERSHIP')?'checked':''}}> ADMIN PARTNERSHIP
						                   </label> 
						                     <label class="radio-inline"> 
						                     <input type="radio"  name="status" id="ADMIN" class="icheck" value="ADMIN" {{ $ADM = ($edit->status=='ADMIN')?'checked':''}}> ADMIN
						                   </label> </td>
									</tr>
									<tr>
										<td colspan="3"><button type="submit" class="btn btn-success">Save Data</button>
									    <input class="btn btn-default" type="reset" name="batal" value="Cancel" onclick="location.href='/user/'"/></td>
									</tr>
									</table>
									</div>
									</form>
                        </div>
                    </div>
                    </div>
                    <!-- END CONTENT BODY -->
@endsection