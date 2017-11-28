<body onload="javascript:window.print()">
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" />
	<link href="{{ asset('backend/global/plugins/font-awesome/css/font-awesome.min.css') }}" rel="stylesheet" type="text/css" />
	<link href="{{ asset('backend/global/plugins/simple-line-icons/simple-line-icons.min.css') }}" rel="stylesheet" type="text/css" />
	<link href="{{ asset('backend/global/plugins/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
	<link href="{{ asset('backend/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css') }}" rel="stylesheet" type="text/css" />
	<!-- END GLOBAL MANDATORY STYLES -->
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<link href="{{ asset('backend/global/plugins/bootstrap-daterangepicker/daterangepicker.min.css') }}" rel="stylesheet" type="text/css" />
	<link href="{{ asset('backend/global/plugins/morris/morris.css') }}" rel="stylesheet" type="text/css" />
	<link href="{{ asset('backend/global/plugins/fullcalendar/fullcalendar.min.css') }}" rel="stylesheet" type="text/css" />
	<link href="{{ asset('backend/global/plugins/jqvmap/jqvmap/jqvmap.css') }}" rel="stylesheet" type="text/css" />
	<link href="{{ asset('backend/global/plugins/datatables/datatables.min.css') }}" rel="stylesheet" type="text/css" />
	<link href="{{ asset('backend/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css') }}" rel="stylesheet" type="text/css" />
	<link href="{{ asset('backend/pages/css/profile.min.css') }}" rel="stylesheet" type="text/css" />
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN THEME GLOBAL STYLES -->
	<link href="{{ asset('backend/global/css/components.min.css') }}" rel="stylesheet" id="style_components" type="text/css" />
	<link href="{{ asset('backend/global/css/plugins.min.css') }}" rel="stylesheet" type="text/css" />
	<!-- END THEME GLOBAL STYLES -->
	<!-- BEGIN THEME LAYOUT STYLES -->
	<link href="{{ asset('backend/layouts/layout2/css/layout.min.css') }}" rel="stylesheet" type="text/css" />
	<style type="text/css">
		.pagebreak {
			border-bottom: 1px solid #000;
			border-style: dashed;
		}
	</style>
	<!-- END THEME LAYOUT STYLES -->
	@foreach($view as $no => $detail)
	<input type="hidden" value="{!!
	$datein     = $detail->datein;
	$dateout    = $detail->dateout;
	$selisih    = strtotime($dateout) -  strtotime($datein);
	$hari       = $selisih/(60*60*24);
	$total      = ($hari * $detail->price);
	!!}">
	<!-- BEGIN PAGE TITLE-->
	<!-- END PAGE TITLE-->
	<!-- END PAGE HEADER-->

	<div class="invoice">
		<div class="row invoice-logo">
			<div class="col-xs-6 invoice-logo-space">
				<img src="{{ asset('upload/companies/')}}/{{ $identitas->favicon }}" class="img-responsive" width="120px;" alt="" /> </div>
				<div class="col-xs-6">
					<p> <b> <h3>Ivoice #{{ $detail->invoice }}</h3></b>
						<span class="muted"> Date: {{ date('d F Y', strtotime($detail->created_at)) }} </span>
						<br><b> {{ !empty($detail->companypartnership->name) ? $detail->companypartnership->name : '-' }} </b>
					</p>
				</div>
			</div>
			<hr/>
			<div class="row">
				<div class="col-xs-4">
					<h3>Client:</h3>
					<ul class="list-unstyled">
						<li> <b>{{ $detail->name }}</b> </li>
						<li> {{ $detail->email }} </li>
					<!-- 	<li> {{ $detail->phone }} </li>
						<li> {{ $detail->address }} </li> -->
						<!-- <li> {{ $detail->information }} </li> -->
					</ul>
				</div>
				<div class="col-xs-4">
					<h3>Booking Space:</h3>
					<ul class="list-unstyled">
						<li> {{ !empty($detail->companyservices->name) ? $detail->companyservices->name : '-' }} </li>
						<li> {{ !empty($detail->services->name) ? $detail->services->name : '-' }} </li>
						
					</ul>
				</div>
				<div class="col-xs-4 invoice-payment">
					<h3>Payment Details:</h3>
					<ul class="list-unstyled">
						<li><b>{{ !empty($detail->paymentmethodes->name) ? $detail->paymentmethodes->name : '-' }}</b></li>
					</ul>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12">
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th> Quota </th>
								<th> Quota User </th>
								<th> Current Quota User </th>
								<th> Now Quota User </th>
								<th> Status Payment </th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td> {{ $detail->quota }} </td>
								<td> {{ $detail->quotauser }}</td>
								<td> {{ $detail->currentquotauser }}</td>
								<td> {{ $detail->nowquotauser }} </td>
								<td> @if($detail->statuspayment == 'Y') 
									<b> Approved </b> 
									@else
									<b>Pending</b> 
								@endif </td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-6">
						<address>
							<strong>{{ $identitas->name }}</strong>
							<br/> {{ $identitas->address }}<br>
							{{ $identitas->phone }}
							<br/>
							{{ $identitas->email }}
						</address>
				</div>
				<div class="col-xs-6 invoice-block">
					<ul class="list-unstyled amounts">
						<li><strong>Rented:</strong> {{ date('d F Y', strtotime($detail->datein)) }} s/d {{ date('d F Y', strtotime($detail->dateout)) }} </li>
						<li><strong>Result:</strong> {{ $hari }} Days  * {{ number_format($detail->price, 2) }} </li>
						<li><strong>Grand Total:</strong> Rp.{{ number_format($detail->totalprice, 2) }} </li>
					</ul>
				</div>
			</div>
		</div>
	</div>
<div class="pagebreak"></div>
	<!-- END CONTENT BODY -->
	
	@endforeach