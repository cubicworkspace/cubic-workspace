@extends('layouts.partner')
@section('title','Company Services')
@section('content')
@if ($action == 'view' || empty($action))
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
<div class="portlet light ">
    <div class="portlet-title">
        <div class="caption font-dark">
            <span class="caption-subject bold uppercase">
                <a href="{{ route('partner.companyservices_add') }}" id="sample_editable_1_new" class="btn sbold green"> Add New
                    <i class="fa fa-plus"></i>
                </a></span>
            </div>
            <div class="actions">
                <div class="btn-group btn-group-devided" data-toggle="buttons"><button class="btn green  btn-outline dropdown-toggle" data-toggle="dropdown">Tools
                    <i class="fa fa-angle-down"></i>
                </button>
                <ul class="dropdown-menu pull-right">
                    <li>
                        <a href="javascript:;">
                            <i class="fa fa-print"></i> Print </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <i class="fa fa-file-pdf-o"></i> Save as PDF </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <i class="fa fa-file-excel-o"></i> Export to Excel </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="table-toolbar">
                       @include('layouts.flashpartner')
                       <table class="table table-striped table-bordered table-hover table-checkable order-column" id="sample_1">
                        <thead>
                            <tr>
                                <tr>
                                    <th>#</th>
                                    <th>Code</th>
                                    <th>Name</th>
                                    <th>Rented</th>
                                    <th>Services</th>
                                    <!-- <th>Status</th> -->
                                    <th>Actions</th>
                                </tr>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($view as $no => $row)
                            <tr>
                                <td>{{ ++$no }}</td>
                                <td>{{ $row->codecompanyservices }}</td>
                                <td>{{ $row->name }}</td>
                                <td>@if($row->statusbooking == 'bulan') Monthly @else Daily @endif </td>
                                <td>{{ !empty($row->services->name) ? $row->services->name : '-' }} </td>
                                <!-- <td>{{ $row->status }}</td> -->
                                <td>                      
                                  <form action="/companyservices/{{$row->id}}" method="POST">
                                      <a data-toggle="modal" href="#bukti{{$row->id}}" class="btn btn-info" title="Detail">
                                        <i class="fa fa-paper-plane-o"></i></a>   
                                        <a href="/partner/companyservices/edit/{{$row->id}}" class="btn btn-warning" title="Edit"><i class="fa fa-pencil" ></i></a> 
                                        {{ csrf_field() }}
                                        {{ method_field('DELETE') }}
                                        <a href="companyservices/delete/{{$row->codecompanyservices}}" onclick="return confirm('Are you sure you want to delete this data?')"  class="btn btn-danger"   title="Delete"><i class="fa fa-trash" ></i></a> 
                                    </td>
                                </tr>
                                <div class="modal fade" id="bukti{{$row->id}}" tabindex="-1" role="buki" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                                <h4 class="modal-title">Detail Company Services <b>{{ $row->name }}</b></h4>
                                            </div>
                                            <div class="modal-body"> 
                                                   <div class="form-body">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">Name : </label>
                                                                <b>{{ $row->name }}</b>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">Information : </label>
                                                                 <b>{{ $row->information }}</b>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">Quota : </label>
                                                                 <b>{{ $row->quota }}</b>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">Quota User : </label>
                                                                 <b>{{ $row->quotauser }}</b>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">Price : </label>
                                                                 <b>{{ $row->price }}</b>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">Rented : </label>
                                                                 <b> @if($row->statusbooking == 'bulan') Monthly @else Daily @endif </b>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">Services : </label>
                                                                 <b>{{ !empty($row->services->name) ? $row->services->name : '-' }} </b>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3">Image : </label>
                                                                 <b> <img src="{{ asset('upload/mediacompanyservices') }}/{{ $row->image }}" class="img-responsive" alt="" width="150px">  </b>
                                                        </div>
                                            </div><br><br>
                                            <div class="modal-footer">
                                                <button type="button" class="btn dark btn-outline" data-dismiss="modal">Close</button>
                                                <!-- <button type="button" class="btn green">Save changes</button> -->
                                            </div>
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
                                </div>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>

                @elseif ($action == 'add')

                <h1 class="page-title">@yield('title') </h1>
                <div class="page-bar">
                    <ul class="page-breadcrumb">
                        <li>
                            <i class="icon-home"></i>
                            <a href="{{ route('partner.dashboard') }}">Dashboard</a>
                            <i class="fa fa-angle-right"></i>
                        </li>
                        <li>
                            <a href="{{ route('partner.companyservices') }}">@yield('title')</a>
                            <i class="fa fa-angle-right"></i>
                        </li>
                        <li>
                            <span>{{ $action }}</span>
                        </li>
                    </ul>

                </div>
                <!-- END PAGE HEADER-->
                <div class="row">
                    <div class="col-md-12">
                        <!-- BEGIN VALIDATION STATES-->
                        <div class="portlet light portlet-fit portlet-form ">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class="icon-settings font-dark"></i>
                                    <span class="caption-subject font-dark sbold uppercase">{{ $action }} @yield('title')</span>
                                </div>
                                <div class="actions">
                                    <div class="btn-group btn-group-devided" data-toggle="buttons">

                                    </div>
                                </div>
                            </div>
                            <div class="portlet-body">
                                <!-- BEGIN FORM-->
                                <form action="{{ route ('partner.companyservices_add_action')}}" id="form_sample_2" class="form-horizontal" method="POST" enctype="multipart/form-data">
                                    {{ csrf_field() }}
                                    <input type="hidden" name="codecompanyservices" class="form-control" value="{{ $no }}" />
                                    @foreach($cp as $row)
                                    <input type="hidden" name="codecity" class="form-control" value="{{ $row->codecity }}" />
                                    <input type="hidden" name="codecompanypartnership" class="form-control" value="{{ $row->id }}" />
                                    @endforeach
                                    <div class="form-body">
                                        <div class="form-group">
                                            <label class="control-label col-md-3">Name  <span class="required"> * </span> </label>
                                            <div class="col-md-6">
                                                <input type="text" name="name" data-required="1" class="form-control" /> 
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3">Information  <span class="required"> * </span> </label>
                                            <div class="col-md-6">
                                                <input type="text" name="information" data-required="2" class="form-control" required="" /> 
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3">Quota  <span class="required"> * </span> </label>
                                            <div class="col-md-2">
                                                <input type="number" name="quota" data-required="2" class="form-control" required="" /> 
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3">Quota Users <span class="required"> * </span> </label>
                                            <div class="col-md-2">
                                                <input type="number" name="quotauser" data-required="2" class="form-control" required="" /> 
                                            </div>
                                        </div>                                    
                                        <div class="form-group">
                                            <label class="control-label col-md-3">Price  <span class="required"> * </span> </label>
                                            <div class="col-md-2">
                                                <input type="number" name="price" data-required="2" class="form-control" required="" /> 
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3">Rented  <span class="required"> * </span> </label>
                                            <div class="col-md-6">                       
                                                <label class="radio-inline"> 
                                                 <input type="radio" checked="" name="statusbooking" id="bulan" class="icheck" value="bulan"> Monthly
                                             </label> 
                                             <label class="radio-inline"> 
                                                 <input type="radio"  name="statusbooking" id="hari" class="icheck" value="hari"> Daily
                                             </label>
                                         </div>
                                     </div>
                                     <div class="form-group last">
                                        <label class="control-label col-md-3">Services
                                            <span class="required"> * </span>
                                        </label>
                                        <div class="col-md-6">
                                         {!! Form::select('codeservices', $services, null,
                                         ['class' => 'form-control', 'required' => 'required','id' => 'id','value' => 'name',
                                         'placeholder' => '-- Select Services --'
                                         ]) !!}
                                     </div>
                                 </div>
                                 <div class="form-group">
                                    <label class="control-label col-md-3">Image <span class="required"> * </span> </label>
                                    <div class="col-md-2">
                                        <input type="file" name="image" data-required="2" required="" /> 
                                    </div>
                                </div>  
                            </div>
                            <div class="form-actions">
                                <div class="row">
                                    <div class="col-md-offset-3 col-md-9">
                                        <button type="submit" class="btn btn-success">Save Data</button>
                                        <input class="btn default" type="reset" name="batal" value="Cancel" onclick="location.href='{{ route('partner.companyservices')}}'"/>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <!-- END FORM-->
                    </div>
                    <!-- END VALIDATION STATES-->
                </div>
            </div>
        </div>
    </div>
    <!-- END CONTENT BODY -->
    @elseif ($action == 'edit')
    <h1 class="page-title">@yield('title') </h1>
    <div class="page-bar">
        <ul class="page-breadcrumb">
            <li>
                <i class="icon-home"></i>
                <a href="{{ route('partner.dashboard') }}">Dashboard</a>
                <i class="fa fa-angle-right"></i>
            </li>
            <li>
                <a href="{{ route('partner.companyservices') }}">@yield('title')</a>
                <i class="fa fa-angle-right"></i>
            </li>
            <li>
                <span>{{ $action }}</span>
            </li>
        </ul>

    </div>
    <!-- END PAGE HEADER-->
    <div class="row">
        <div class="col-md-12">
            <!-- BEGIN VALIDATION STATES-->
            <div class="portlet light portlet-fit portlet-form ">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="icon-settings font-dark"></i>
                        <span class="caption-subject font-dark sbold uppercase">{{ $action }} @yield('title')</span>
                    </div>
                    <div class="actions">
                        <div class="btn-group btn-group-devided" data-toggle="buttons">

                        </div>
                    </div>
                </div>
                <div class="portlet-body">
                    <!-- BEGIN FORM-->
                    <form action="{{ route ('partner.companyservices_edit_action')}}" id="form_sample_2" class="form-horizontal" method="POST" enctype="multipart/form-data">
                        {{ csrf_field() }}
                        <input type="hidden" name="codecompanyservices" class="form-control" value="{{ $edit->codecompanyservices }}" />
                        <div class="form-body">
                            <div class="form-group">
                                <label class="control-label col-md-3">Name  <span class="required"> * </span> </label>
                                <div class="col-md-6">
                                    <input type="text" name="name" data-required="1" class="form-control" value="{{ $edit->name }}" /> 
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">Information  <span class="required"> * </span> </label>
                                <div class="col-md-6">
                                    <input type="text" name="information" data-required="2" class="form-control" required="" value="{{ $edit->information }}" /> 
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">Quota  <span class="required"> * </span> </label>
                                <div class="col-md-2">
                                    <input type="number" name="quota" data-required="2" class="form-control" required="" value="{{ $edit->quota }}"  /> 
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">Quota Users <span class="required"> * </span> </label>
                                <div class="col-md-2">
                                    <input type="number" name="quotauser" data-required="2" class="form-control" required=""  value="{{ $edit->quotauser }}" /> 
                                </div>
                            </div>                                    
                            <div class="form-group">
                                <label class="control-label col-md-3">Price  <span class="required"> * </span> </label>
                                <div class="col-md-2">
                                    <input type="number" name="price" data-required="2" class="form-control" required="" value="{{ $edit->price }}"  /> 
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">Rented  <span class="required"> * </span> </label>
                                <div class="col-md-6">                       
                                    <label class="radio-inline"> 
                                     <input type="radio" name="statusbooking" id="bulan" class="icheck" value="bulan" {{ $bulan = ($edit->statusbooking=='bulan')?'checked':''}}> Monthly
                                 </label> 
                                 <label class="radio-inline"> 
                                     <input type="radio"  name="statusbooking" id="hari" class="icheck" value="hari" {{ $hari = ($edit->statusbooking=='hari')?'checked':''}}> Daily
                                 </label>
                             </div>
                         </div>
                         <div class="form-group last">
                            <label class="control-label col-md-3">Services
                                <span class="required"> * </span>
                            </label>
                            <div class="col-md-6">
                             <select class="form-control" id="id" value="name" name="codeservices" required>
                                <option value="{{ !empty($edit->services->id) ? $edit->services->id : '' }}">{{ !empty($edit->services->name) ? $edit->services->name : '-- Select Services --' }} </option>
                                @foreach($services as $row)
                                <option value="{{ $row->id }}">{{ $row->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    @if ($edit->image)
                    <div class="form-group last">
                        <label class="control-label col-md-3">
                        </label>
                        <div class="col-md-6">
                            <img src="{{ asset('upload/mediacompanyservices') }}/{{ $edit->image }}" width="80">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3">Edit Image <span class="required"> * </span> </label>
                        <div class="col-md-2">
                            <input type="file" name="image" data-required="2" /> 
                        </div>
                    </div>
                    @else
                    <div class="form-group">
                        <label class="control-label col-md-3">Image <span class="required"> * </span> </label>
                        <div class="col-md-2">
                            <input type="file" name="image" data-required="2" /> 
                        </div>
                    </div>
                    @endif
                </div>
                <div class="form-actions">
                    <div class="row">
                        <div class="col-md-offset-3 col-md-9">
                            <button type="submit" class="btn btn-success">Save Data</button>
                            <input class="btn default" type="reset" name="batal" value="Cancel" onclick="location.href='{{ route('partner.companyservices')}}'"/>
                        </div>
                    </div>
                </div>
            </form>
            <!-- END FORM-->
        </div>
        <!-- END VALIDATION STATES-->
    </div>
</div>
</div>
</div>
<!-- END CONTENT BODY -->

@endif
@endsection