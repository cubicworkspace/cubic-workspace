<!doctype html>

<html lang="{{ app()->getLocale() }}">


<!-- Mirrored from crenoveative.com/envato/tour-packer/ by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 25 Mar 2017 03:26:51 GMT -->
<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Workspace</title>
	<meta name="description" content="HTML Responsive Template for Tour Agency or Company Based on Twitter Bootstrap 3.x.x" />
	<meta name="keywords" content="tour package, holiday, hotel, vocation, booking, trip, travel, tourism, tourist" />
	<meta name="author" content="crenoveative">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	
	<!-- Fav and Touch Icons -->
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="{{ asset('frontend/images/ico/apple-touch-icon-144-precomposed.png') }}">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="{{ asset('frontend/images/ico/apple-touch-icon-114-precomposed.png') }}">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="{{ asset('frontend/images/ico/apple-touch-icon-72-precomposed.png') }}">
	<link rel="apple-touch-icon-precomposed" href="{{ asset('frontend/images/ico/apple-touch-icon-57-precomposed.png') }}">
	<link rel="shortcut icon" href="{{ asset('frontend/images/ico/favicon.png') }}">

	<!-- CSS Plugins -->
	<link rel="stylesheet" type="text/css" href="{{ asset('frontend/bootstrap/css/bootstrap.min.css') }}" media="screen">	
	<link href="{{ asset('frontend/css/animate.css') }}" rel="stylesheet">
	<link href="{{ asset('frontend/css/main.css') }}" rel="stylesheet">
	<link href="{{ asset('frontend/css/component.css') }}" rel="stylesheet">
	
	<!-- CSS Font Icons -->
	<link rel="stylesheet" href="{{ asset('frontend/icons/ionicons/css/ionicons.css') }}">
	<link rel="stylesheet" href="{{ asset('frontend/icons/font-awesome/css/font-awesome.min.css') }}">
	<link rel="stylesheet" href="{{ asset('frontend/icons/pe-icon-7-stroke/css/pe-icon-7-stroke.css') }}">
	<link rel="stylesheet" href="{{ asset('frontend/icons/simple-line-icons/css/simple-line-icons.css') }}">
	<link rel="stylesheet" href="{{ asset('frontend/icons/rivolicons/style.css') }}">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

	<!-- Google Fonts -->
	<link href='https://fonts.googleapis.com/css?family=Lato:400,400italic,700,700italic,300italic,300' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,400italic,300italic,300,600,600italic,700,700italic' rel='stylesheet' type='text/css'>

	<!-- CSS Custom -->
	<link href="{{ asset('frontend/css/style.css') }}" rel="stylesheet">

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	
</head>

<body>
	
		<!-- BEGIN # MODAL LOGIN -->
		@include('layout.top')

		<div class="clear"></div>
		
		<!-- start Main Wrapper -->
		<div class="main-wrapper">
		
			@yield('content')
			
		</div>
		<!-- end Main Wrapper -->
		@include('layout.bottom')
		
	</div>  <!-- end Container Wrapper -->
 

 
	<!-- start Back To Top -->
	<div id="back-to-top">
		 <a href="#"><i class="fa fa-angle-up"></i></a>
	</div>
	<!-- end Back To Top -->



<!-- JS -->
<script type="text/javascript" src="{{ asset('frontend/js/jquery-1.11.3.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('frontend/js/jquery-migrate-1.2.1.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('frontend/bootstrap/js/bootstrap.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('frontend/js/jquery.waypoints.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('frontend/js/jquery.easing.1.3.js') }}"></script>
<script type="text/javascript" src="{{ asset('frontend/js/SmoothScroll.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('frontend/js/jquery.slicknav.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('frontend/js/jquery.placeholder.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('frontend/js/instagram.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('frontend/js/spin.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('frontend/js/jquery.introLoader.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('frontend/js/select2.full.js') }}"></script>
<script type="text/javascript" src="{{ asset('frontend/js/jquery.responsivegrid.js') }}"></script>
<script type="text/javascript" src="{{ asset('frontend/js/ion.rangeSlider.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('frontend/js/readmore.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('frontend/js/slick.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('frontend/js/validator.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('frontend/js/jquery.raty.js') }}"></script> 
<script type="text/javascript" src="{{ asset('frontend/js/customs.js') }}"></script>


</body>

<!-- Mirrored from crenoveative.com/envato/tour-packer/ by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 25 Mar 2017 03:28:49 GMT -->
</html>