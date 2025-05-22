@extends('backend.master')
@section('css')
<link rel="stylesheet" href="{{asset('admin/assets/vendor/jquery-datatable/dataTables.bootstrap4.min.css')}}">
@endsection 
@section('content')
<div id="main-content">
    <div class="container-fluid">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-5 col-md-8 col-sm-12">
                <h2><a href="javascript:void(0);" class="btn btn-xs btn-link btn-toggle-fullwidth"><i class="fa fa-arrow-left"></i></a>Contacts List</h2>
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/dashboard')}}"><i class="icon-home"></i></a></li>
                    <li class="breadcrumb-item">Contacts List</li>
                </ul>
                </div>
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-lg-12">
                <div class="card">
                <div class="header">
                @include('backend.layouts.flash-message')
                    <!-- <h2>Basic Table <small>Basic example without any additional modification classes</small> </h2> -->
                    <a href="{{$url['createUrl']}}" class="btn btn-info">Add Contact</a>
					<a href="{{$url['importUrl']}}" class="btn btn-info">Import Contacts</a>
                    
                </div>
                <div class="body">
                    <div class="table-responsive">
                    <table class="table table-bordered table-hover table-custom" id="user_datatable">
                            <thead>
                            <tr>
								<th>Full Name</th>                                
                                <th>Mobile Number</th>                                
                                <th>Action</th>
                            </tr>
                            </thead>
                        </table>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection 
@push('scripts')  
<script src="{{asset('admin/assets/bundles/datatablescripts.bundle.js')}}"></script>
<script src="{{asset('admin/assets/vendor/jquery-datatable/jquery-datatable.js')}}"></script>
<script src="{{asset('admin/assets/js/common.js')}}"></script>
<script>
    $(document).ready( function () {
       var table =  $('#user_datatable').DataTable({
           processing: true,
           serverSide: true,
            ajax: {
                "url":"{{ route('contacts.list') }}",
                "type": "GET",
                "data": function(d){
                    //d.role = $("#role").val();
                }
            },
            columns: [
              
                { data: 'full_name', name: 'full_name' },
                { data: 'mobile_number', name: 'mobile_number' },
				{ data: 'action', name: 'action',orderable: false, 
                searchable: false } 
            ]
        });
    });
    
    function refreshTable(){
        $('#user_datatable').each(function() {
            dt = $(this).dataTable();
            dt.fnDraw();
        })
    }
</script>
@endpush