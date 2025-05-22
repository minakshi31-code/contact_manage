<!doctype html>
<html lang="en">
   <head>
      <title>:: {{config('app.name')}} :: </title>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
       <link rel="stylesheet" href="{{asset('admin/assets/vendor/bootstrap/css/bootstrap.min.css')}}">
      <link rel="stylesheet" href="{{asset('admin/assets/vendor/font-awesome/css/font-awesome.min.css')}}">
      <link rel="stylesheet" href="{{asset('admin/assets/vendor/jvectormap/jquery-jvectormap-2.0.3.min.css')}}" />
      <link rel="stylesheet" href="{{asset('admin/assets/vendor/morrisjs/morris.min.css')}}" />
      <link rel="stylesheet" href="{{asset('admin/assets/css/main.css')}}">
      <link rel="stylesheet" href="{{asset('admin/assets/css/color_skins.css')}}">
      <link rel="stylesheet" href="{{asset('admin/assets/css/custom.css')}}"> 
      <meta name="csrf-token" content="{{ csrf_token() }}">
       
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
      <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,300,0,0" />
      
      <script>
            var webUrl = '{{url("/")}}';
      </script>
      @yield('css')
   </head>
   <style>
    .menunew .active a{
    font-weight: 700;
	color: #777;
}
 .activecls{
    font-weight: 700;
	color: #777;
}
   </style>
   <body class="theme-cyan">
      <div class="page-loader-wrapper">
         <div class="loader">
            <div class="m-t-30"> </div>
            <p>Please Wait</p>
         </div>
      </div>
      <div id="wrapper">
         <nav class="navbar navbar-fixed-top">
            <div class="container-fluid">
               <div class="navbar-btn">
                  <button type="button" class="btn-toggle-offcanvas"><i class="lnr lnr-menu fa fa-bars"></i></button>
               </div>  
               <div class="navbar-brand"> 
                  <a href="{{url('dashboard')}}">
                  <!--<strong class="logo-text"> &nbsp;{{ __('general.pashumitra') }}</strong>-->
                  </a>
               </div>
               <div class="navbar-right">
                  <div id="navbar-menu">
                     <ul class="nav navbar-nav"> 
                        <!--<li><a href="{{route('profile')}}" class="icon-menu"><i class="icon-user"></i></a></li>-->
                        <li>
                           <a href="{{ route('auth.logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();" class="icon-menu text-dark text-uppercase"><i class="bi bi-box-arrow-right text-logo mr-1"></i> Logout</a>
                        </li>
                     </ul>
                  </div>
               </div>
            </div>
         </nav>
         <div id="left-sidebar" class="sidebar">
            <div class="sidebar-scroll">
               <div class="user-account">
                  <img src="{{asset('admin/assets/images/user.png')}}" class="rounded-circle user-photo" alt="User Profile Picture">
                  <div class="dropdown">
                     <span>Welcome</span>
                     <a href="javascript:void(0);" class="dropdown-toggle user-name" data-toggle="dropdown"><strong></strong></a>
                     <ul class="dropdown-menu dropdown-menu-right account">
                        <li><a href="{{ route('auth.logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();"><i class="icon-power"></i>Logout</a></li>
                     </ul> 
                  </div>      
               </div>   
               <div class="tab-content p-l-0 p-r-0"> 
                  <div class="tab-pane active" id="menu">
                     <nav id="left-sidebar-nav" class="sidebar-nav">
                        <ul id="main-menu" class="metismenu">
					  
						 <li class="@if (\Request::is('contacts') || \Request::is('contacts/*')) active  @endif">
                              <a href="{{url('contacts')}}" class="@if (\Request::is('contacts')) active  @endif" ><i class="bi bi-tags"></i> <span>Contacts </span></a>
                           </li>
						  
                         
                        </ul>
                     </nav>
                  </div>
               </div>
            </div>
         </div>
         <form id="logout-form" action="{{ route('auth.logout') }}" method="POST" class="d-none">
               @csrf
         </form>
