<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<title>Panel Partnership | {{ $identitas->name }} | @yield('title')</title>
<meta name="description" content="{{ strip_tags($identitas->description) }}" />
<meta name="keywords" content="{{ strip_tags($identitas->profile) }}" />
<meta name="author" content="{{ $identitas->author }}">
<link rel="apple-touch-icon" href="{{ asset('upload/companies/')}}/{{ $identitas->favicon }}">
<link rel="shortcut icon" href="{{ asset('upload/companies/')}}/{{ $identitas->favicon }}">
<!-- BEGIN GLOBAL MANDATORY STYLES -->
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
<link href="{{ asset('backend/layouts/layout2/css/themes/blue.min.css') }}" rel="stylesheet" type="text/css" id="style_color" />
<link href="{{ asset('backend/layouts/layout2/css/custom.min.css') }}" rel="stylesheet" type="text/css" />
<!-- END THEME LAYOUT STYLES -->
</head>
<!-- END HEAD -->

<body class="page-header-fixed page-sidebar-closed-hide-logo page-container-bg-solid">
        <!-- BEGIN HEADER -->
        <div class="page-header navbar navbar-fixed-top">
            <!-- BEGIN HEADER INNER -->
            <div class="page-header-inner ">
                <!-- BEGIN LOGO -->
               <div class="page-logo">
                    <a href="{{ route('partner.dashboard') }}">
                        <img src="{{ asset('upload/companies/')}}/{{ $identitas->logo }}" alt="logo" class="logo-default" width="135" /> </a>
                    <div class="menu-toggler sidebar-toggler">
                        <!-- DOC: Remove the above "hide" to enable the sidebar toggler button on header -->
                    </div>
                </div>
                <!-- END LOGO -->
                <!-- BEGIN RESPONSIVE MENU TOGGLER -->
                <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse"> </a>
                <!-- END RESPONSIVE MENU TOGGLER -->
                <!-- BEGIN PAGE ACTIONS -->
                <!-- DOC: Remove "hide" class to enable the page header actions -->
                <div class="page-actions">
                    <div class="btn-group">
                        <button type="button" class="btn btn-circle btn-outline red dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-plus"></i>&nbsp;
                            <span class="hidden-sm hidden-xs">New&nbsp;</span>&nbsp;
                            <i class="fa fa-angle-down"></i>
                        </button>
                        <ul class="dropdown-menu" role="menu">
                            <li>
                                <a href="javascript:;">
                                    <i class="icon-docs"></i> New Post </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <i class="icon-tag"></i> New Comment </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <i class="icon-share"></i> Share </a>
                            </li>
                            <li class="divider"> </li>
                            <li>
                                <a href="javascript:;">
                                    <i class="icon-flag"></i> Comments
                                    <span class="badge badge-success">4</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <i class="icon-users"></i> Feedbacks
                                    <span class="badge badge-danger">2</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- END PAGE ACTIONS -->
                <!-- BEGIN PAGE TOP -->
                <div class="page-top">
                    <!-- BEGIN HEADER SEARCH BOX -->
                    <!-- BEGIN TOP NAVIGATION MENU -->
                    <div class="top-menu">
                        <ul class="nav navbar-nav pull-right">
                            <!-- BEGIN USER LOGIN DROPDOWN -->
                            <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
                            <li class="dropdown dropdown-user">
                                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                    <img alt="" class="img-circle" src="{{ asset('backend/layouts/layout2/img/avatar3_small.jpg') }}" />
                                    <span class="username username-hide-on-mobile"> {{ Auth::user()->name }} </span>
                                    <i class="fa fa-angle-down"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-default">
                                    <li>
                                        <a href="page_user_profile_1.html">
                                            <i class="icon-user"></i> My Profile </a>
                                    </li>
                                    <li>
                                        <a href="app_calendar.html">
                                            <i class="icon-calendar"></i> My Calendar </a>
                                    </li>
                                    <li>
                                        <a href="app_inbox.html">
                                            <i class="icon-envelope-open"></i> My Inbox
                                            <span class="badge badge-danger"> 3 </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="app_todo_2.html">
                                            <i class="icon-rocket"></i> My Tasks
                                            <span class="badge badge-success"> 7 </span>
                                        </a>
                                    </li>
                                    <li class="divider"> </li>
                                    <li>
                                        <a href="page_user_lock_1.html">
                                            <i class="icon-lock"></i> Lock Screen </a>
                                    </li>
                                    <li>
                                        <a href="{{ route('partner.logout') }}">
                                            <i class="icon-key"></i> Log Out </a>
                                    </li>
                                </ul>
                            </li>
                            <!-- END USER LOGIN DROPDOWN -->
                        </ul>
                    </div>
                    <!-- END TOP NAVIGATION MENU -->
                </div>
                <!-- END PAGE TOP -->
            </div>
            <!-- END HEADER INNER -->
        </div>
        <!-- END HEADER -->
        <!-- BEGIN HEADER & CONTENT DIVIDER -->
        <div class="clearfix"> </div>
        <!-- END HEADER & CONTENT DIVIDER -->
        <!-- BEGIN CONTAINER -->
        <div class="page-container">
            <!-- BEGIN SIDEBAR -->
            <div class="page-sidebar-wrapper">
                <!-- END SIDEBAR -->
                <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
                <!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
                <div class="page-sidebar navbar-collapse collapse">
                    <!-- BEGIN SIDEBAR MENU -->
                    <!-- DOC: Apply "page-sidebar-menu-light" class right after "page-sidebar-menu" to enable light sidebar menu style(without borders) -->
                    <!-- DOC: Apply "page-sidebar-menu-hover-submenu" class right after "page-sidebar-menu" to enable hoverable(hover vs accordion) sub menu mode -->
                    <!-- DOC: Apply "page-sidebar-menu-closed" class right after "page-sidebar-menu" to collapse("page-sidebar-closed" class must be applied to the body element) the sidebar sub menu mode -->
                    <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
                    <!-- DOC: Set data-keep-expand="true" to keep the submenues expanded -->
                    <!-- DOC: Set data-auto-speed="200" to adjust the sub menu slide up/down speed -->
                    <ul class="page-sidebar-menu  page-header-fixed page-sidebar-menu-hover-submenu " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
                        <li class="nav-item 
                            {{ Request::segment(1) === 'partner/dashboard' ? 'start active open' : null }} ">
                            <a href="{{ route('partner.dashboard') }}" class="nav-link nav-toggle">
                                <i class="icon-home"></i>
                                <span class="title">Dashboard</span>
                                <span class="selected"></span>
                                <span class="arrow open"></span>
                            </a>
                        </li>
                        <li class="nav-item {{ Request::segment(1) === 'partner.companyservices' ? 'start active open' : null }}">
                            <a href="{{ route('partner.companyservices') }}" class="nav-link nav-toggle">
                                <i class="icon-layers"></i>
                                <span class="title">Company Services</span>
                                <span class="arrow"></span>
                            </a>
                        </li>
                        <li class="nav-item  ">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-puzzle"></i>
                                <span class="title">Components</span>
                                <span class="arrow"></span>
                            </a>                           
                        </li>
                        <li class="nav-item  ">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-settings"></i>
                                <span class="title">Form Stuff</span>
                                <span class="arrow"></span>
                            </a>                           
                        </li>
                        <li class="nav-item  ">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-bulb"></i>
                                <span class="title">Elements</span>
                                <span class="arrow"></span>
                            </a>
                        </li>
                        <li class="nav-item  ">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-briefcase"></i>
                                <span class="title">Tables</span>
                                <span class="arrow"></span>
                            </a>                           
                        </li>
                        <li class="nav-item  ">
                            <a href="?p=" class="nav-link nav-toggle">
                                <i class="icon-wallet"></i>
                                <span class="title">Portlets</span>
                                <span class="arrow"></span>
                            </a>
                        </li>
                        <li class="nav-item  ">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-bar-chart"></i>
                                <span class="title">Charts</span>
                                <span class="arrow"></span>
                            </a>
                        </li>
                        <li class="nav-item  ">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-pointer"></i>
                                <span class="title">Maps</span>
                                <span class="arrow"></span>
                            </a>
                        </li>
                        <li class="nav-item  ">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-layers"></i>
                                <span class="title">Page Layouts</span>
                                <span class="arrow"></span>
                            </a>
                        </li>
                        <li class="nav-item  ">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-feed"></i>
                                <span class="title">Sidebar Layouts</span>
                                <span class="arrow"></span>
                            </a>
                        </li>
                    </ul>
                    <!-- END SIDEBAR MENU -->
                </div>
                <!-- END SIDEBAR -->
            </div>
            <!-- END SIDEBAR -->
            <!-- BEGIN CONTENT -->
            <div class="page-content-wrapper">
                <!-- BEGIN CONTENT BODY -->
                <div class="page-content">
                    @yield('content')
                </div>
                <!-- END CONTENT -->
            </div>
             <!-- END CONTAINER -->
        <!-- BEGIN FOOTER -->
        <div class="page-footer">
            <div class="page-footer-inner"> {{ date('Y') }} &copy; {{ $identitas->name }} By
                <a target="_blank" href="http://facebook.com/navagiaginasta">Nava Gia Ginasta</a>
                <div class="scroll-to-top">
                    <i class="icon-arrow-up"></i>
                </div>
            </div>
            <!-- END FOOTER -->
  
            <!-- BEGIN CORE PLUGINS -->
            <script src="{{ asset('backend/global/plugins/jquery.min.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/global/plugins/bootstrap/js/bootstrap.min.js') }}" type="text/javascript"></script>
            <!-- <script src="{{ asset('backend/global/plugins/js.cookie.min.js') }}" type="text/javascript"></script> -->
            <script src="{{ asset('backend/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/global/plugins/jquery.blockui.min.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js') }}" type="text/javascript"></script>
            <!-- END CORE PLUGINS -->
            <!-- BEGIN PAGE LEVEL PLUGINS -->
            <script src="{{ asset('backend/global/plugins/moment.min.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/global/plugins/bootstrap-daterangepicker/daterangepicker.min.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/global/plugins/morris/morris.min.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/global/plugins/morris/raphael-min.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/global/plugins/counterup/jquery.waypoints.min.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/global/plugins/counterup/jquery.counterup.min.js') }}" type="text/javascript"></script>

            <script src="{{ asset('backend/global/scripts/datatable.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/global/plugins/datatables/datatables.min.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js') }}" type="text/javascript"></script>
            <!-- 
            <script src="{{ asset('backend/global/plugins/amcharts/amcharts/amcharts.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/global/plugins/amcharts/amcharts/serial.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/global/plugins/amcharts/amcharts/pie.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/global/plugins/amcharts/amcharts/radar.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/global/plugins/amcharts/amcharts/themes/light.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/global/plugins/amcharts/amcharts/themes/patterns.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/global/plugins/amcharts/amcharts/themes/chalk.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/global/plugins/amcharts/ammap/ammap.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/global/plugins/amcharts/ammap/maps/js/worldLow.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/global/plugins/amcharts/amstockcharts/amstock.js') }}" type="text/javascript"></script>
 -->            
         <!--    <script src="{{ asset('backend/global/plugins/fullcalendar/fullcalendar.min.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/global/plugins/horizontal-timeline/horizontal-timeline.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/global/plugins/flot/jquery.flot.min.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/global/plugins/flot/jquery.flot.resize.min.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/global/plugins/flot/jquery.flot.categories.min.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/global/plugins/jquery-easypiechart/jquery.easypiechart.min.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/global/plugins/jquery.sparkline.min.js') }}" type="text/javascript"></script> -->

            <!-- 
            <script src="{{ asset('backend/global/plugins/jqvmap/jqvmap/jquery.vmap.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.russia.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.world.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.europe.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.germany.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.usa.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/global/plugins/jqvmap/jqvmap/data/jquery.vmap.sampledata.js') }}" type="text/javascript"></script> -->
            <!-- END PAGE LEVEL PLUGINS -->
            <!-- BEGIN THEME GLOBAL SCRIPTS -->
            <script src="{{ asset('backend/global/scripts/app.min.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/pages/scripts/table-datatables-colreorder.min.js') }}" type="text/javascript"></script>
            <!-- END THEME GLOBAL SCRIPTS -->
            <!-- BEGIN PAGE LEVEL SCRIPTS -->
            <script src="{{ asset('backend/pages/scripts/profile.min.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/pages/scripts/dashboard.min.js') }}" type="text/javascript"></script>
            <!-- END PAGE LEVEL SCRIPTS -->
            <!-- BEGIN THEME LAYOUT SCRIPTS -->
            <script src="{{ asset('backend/layouts/layout2/scripts/layout.min.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/layouts/layout2/scripts/demo.min.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/layouts/global/scripts/quick-sidebar.min.js') }}" type="text/javascript"></script>
            <script src="{{ asset('backend/layouts/global/scripts/quick-nav.min.js') }}" type="text/javascript"></script>
            <!-- END THEME LAYOUT SCRIPTS -->
            <script>
                $(document).ready(function()
                {
                    $('#clickmewow').click(function()
                    {
                        $('#radio1003').attr('checked', 'checked');
                    });
                })
            </script>
            <script>
                $('#confirmationModal').modal('show');
            </script>
    </body>

</html>