@extends('backend.master')

@section('content')
<style>
   .card-count {
      width: 100%;
      display: flex;
      flex-direction: column-reverse;
      text-align: left;
   }
   .card-count .counts {
      display: flex;
      justify-content: space-between;
   }
   .card-count .counts h3{margin:0;}
   .card-count .counts a{
      font-size:32px;
      color: #1a2237;
      line-height: 28px;
      font-weight:500;
      border-bottom:1px dashed #496eae;
   }
   .card-count span{
      font-size:19px;
      color: #496eae;
      display: block;
      padding: 0 0 10px 0;
      font-weight:500;
   }
   .card-count small{
      font-size: 14px;
      display: block;
      color: #1a2237;
      opacity: 0.8;
      margin:0 0 1px 0;
   }
</style>
<div id="main-content">
   <div class="container-fluid">
      <div class="block-header">
         <div class="row">
            <div class="col-lg-12">
                
               <h2>
                   <a href="javascript:void(0);" class="btn btn-xs btn-link text-logo btn-toggle-fullwidth"><i class="fa fa-arrow-left"></i></a> 
                  Dashboard
               </h2>
               
               <nav aria-label="breadcrumb" class="pb-2 mb-3 border-bottom">
                  <ol class="breadcrumb">
                     <li class="breadcrumb-item text-logo"><a href="{{route('home')}}"><i class="icon-home"></i></a>
                     </li>
                     <li class="breadcrumb-item active">Dashboard</li>
                  </ol>
               </nav>
            </div>
         </div>
      </div>

     <!-- @if(auth()->user()->can('dashboard'))-->
      <div class="">
<div class="row">
        <div class="col-md-3">
               <div class="card overflowhidden">
                  <div class="body card-count ">
                      

                  </div>
                  <div class="progress progress-sm progress-transparent custom-color-purple m-b-0">
                     <div class="progress-bar" data-transitiongoal="67"></div>
                  </div>
               </div>
            </div> 
			</div>

      </div>
    <!--  @endif-->
   </div>
</div>
</div>
@endsection