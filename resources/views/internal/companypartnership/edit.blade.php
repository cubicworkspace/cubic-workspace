@extends('layouts.internal')
@section('title','Edit Company Partnership')
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
                                    <a href="{{ url('/companypartnership') }}">Company Partnership</a>
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
						            <form action="/companypartnership/{{ $edit->id }}" method="POST" enctype="multipart/form-data">
									{{ csrf_field() }}
									{{ method_field('PUT') }}
									<div class="table-responsive">
						              <table class="table">
									<tr>
										<td>Code Company Partnership</td>
										<td>:</td>
										<td><b>{{ $edit->codecompanypartnership}}</b></td>
									</tr>
						            <tr>
										<td>Name</td>
										<td>:</td>
										<td><input type="text" name="name" value="{{ $edit->name }}" class="form-control" ></td>
									</tr>
									@if ($edit->favicon)
									<tr>
										<td>Favicon</td>
										<td>:</td>
										<td><img src="{{ asset('upload/companypartnership') }}/{{ $edit->favicon }}" width="80"></td>
									</tr>
									<tr>
										<td>Edit Favicon</td>
										<td>:</td>
										<td><input type="file" name="favicon" class="form-control" ></td>
									</tr>
									@else
									<tr>
										<td>Favicon</td>
										<td>:</td>
										<td><input type="file" name="favicon" class="form-control" ></td>
									</tr>
									@endif
									@if ($edit->logo)
									<tr>
										<td>Logo</td>
										<td>:</td>
										<td><img src="{{ asset('upload/companypartnership') }}/{{ $edit->logo }}" width="80"></td>
									</tr>
									<tr>
										<td>Edit Logo</td>
										<td>:</td>
										<td><input type="file" name="logo" class="form-control" ></td>
									</tr>
									@else
									<tr>
										<td>Logo</td>
										<td>:</td>
										<td><input type="file" name="logo" class="form-control" ></td>
									</tr>
									@endif
						            <tr>
										<td>Email</td>
										<td>:</td>
										<td><input type="email" name="email" value="{{ $edit->email }}" class="form-control" ></td>
									</tr>
									<tr>
										<td>Phone</td>
										<td>:</td>
										<td><input type="text" name="phone" value="{{ $edit->phone }}" class="form-control" ></td>
									</tr>
									<tr>
										<td>Fax</td>
										<td>:</td>
										<td><input type="text" name="fax" value="{{ $edit->fax }}" class="form-control" ></td>
									</tr>
									<tr>
										<td>Address</td>
										<td>:</td>
										<td><textarea name="address" class="form-control" >{{ $edit->address }}</textarea></td>
									</tr>
									<tr>
										<td>Maps</td>
										<td>:</td>
										<td><input type="text" name="maps" value="{{ $edit->maps }}" class="form-control" ></td>
									</tr>
									<tr>
										<td>Code Country</td>
										<td>:</td>
										<td><input type="text" name="codecountry" value="{{ $edit->codecountry }}" class="form-control" ></td>
									</tr>
									<tr>
										<td>Code City</td>
										<td>:</td>
										<td><input type="text" name="codecity" value="{{ $edit->codecity }}" class="form-control" ></td>
									</tr>
									<tr>
										<td>Profile</td>
										<td>:</td>
										<td><input type="text" name="profile" value="{{ $edit->profile }}" class="form-control" ></td>
									</tr>
									<tr>
										<td>History</td>
										<td>:</td>
										<td><input type="text" name="history" value="{{ $edit->history }}" class="form-control" ></td>
									</tr>
									<tr>
										<td>Description</td>
										<td>:</td>
										<td><textarea name="description"  class="form-control" >{{ $edit->description }}</textarea></td>
									</tr>
									<tr>
										<td>Vision</td>
										<td>:</td>
										<td><textarea name="vision"  class="form-control" >{{ $edit->vision }}</textarea></td>
									</tr>
									<tr>
										<td>Mision</td>
										<td>:</td>
										<td><textarea name="mision"  class="form-control" >{{ $edit->mision }}</textarea></td>
									</tr>
									<tr>
										<td>Faq</td>
										<td>:</td>
										<td><input type="text" name="faq" value="{{ $edit->faq }}" class="form-control" ></td>
									</tr>
									<tr>
										<td>Information</td>
										<td>:</td>
										<td><input type="text" name="information" value="{{ $edit->information }}" class="form-control" ></td>
									</tr>
									<tr>
										<td colspan="3"><button type="submit" class="btn btn-success">Save Data</button>
									    <input class="btn btn-default" type="reset" name="batal" value="Cancel" onclick="location.href='/companypartnership/'"/></td>
									</tr>
									</table>
									</div>
									</form>
                        </div>
                    </div>
                    </div>
                    <!-- END CONTENT BODY -->
@endsection