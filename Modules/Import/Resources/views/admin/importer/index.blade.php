@extends('admin::layout')

@component('admin::include.page.header')
    @slot('title', trans('import::importer.importer'))
    <li class="separator">
    <li class="nav-item">{{ trans('import::importer.importer') }}</li>
@endcomponent

@section('content')
<form method="POST" id="forms" enctype="multipart/form-data" class="form form-horizontal">
   @csrf
    	<div class="row ">
    		<div class="col-lg-12 col-md-12">
    			<div class="tab-content" id="v-pills-tabContent">
    				<div class="tab-pane fade show active" id="general" role="tabpanel" aria-labelledby="general-tab">
    					<div class="card import-csv">
							<div class="card-header">
    							<div class="card-title">
									<a href="{{ route('admin.ebook.export_ebook') }}" id="btn-export" class="btn btn-primary text-light ml-3 float-right btn-actions" title="{{ trans('import::importer.ebook_export_csv') }}">
										{{ trans('import::importer.export_csv') }}
									</a>
										{{ trans('import::importer.import') }}
								</div>
							</div>
							
    							<div class="card-body">
    							    <div class="form-group row">
										<label for="csv_file" class="col-md-2 text-left">{{ trans('import::attributes.csv_file') }} <span class="required-label">*</span></label>
										<div class="col-md-8 p-0 d-flex">
											<div class="">
												<input type="file" name="csv_file" class="form-control w-auto">
											</div>
											<div class="container">
												<div class="form-group wraps">
													<button type="submit" class="upload-csv input-group-addon btn btn-primary">
														<i class="fas fa-cloud-upload-alt"></i>
													</button>
												</div>
											</div>
										</div><br>
									</div>
									<div class="table-responsive show-csv-data d-none">
										<hr>
										<table class="table-striped table-hover min-w-full divide-y
											divide-gray-200 border display table">
											   <thead>
											   		<tr></tr>
											   </thead>
										   
											   <tbody class="bg-white divide-y
												   divide-gray-200  divide-solid">
												</tbody>
										   </table>
										   <div class="card-footer text-muted">
											   <button type="submit" id="import-csv" class="upload-csv btn btn-primary" >
												   {{ trans('import::importer.import') }}
											   </button>
										   </div>
									   </div>
								 </div>
                           </div>
					 </div>
				</div>
    		</div>
    	</div>
    	<div id="loader-spin"></div>
</form>
				
@endsection
