<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="resources/js/jquery-3.5.0.js"></script>
<style>
p{margin-top:1rem}
</style>
<div class="d-flex flex-column-fluid">
<div class="container">
<div class="card card-custom">
	<div class="card-header">
		<div class="card-title">
			<span class="card-icon">
				<i class="flaticon2-delivery-package text-primary"></i>
			</span>
			<h3 class="card-label">전자 결재</h3>
		</div>
		<div class="card-toolbar">
			<!--begin::Dropdown-->
			<div class="dropdown dropdown-inline mr-2">
				<button type="button" class="btn btn-light-primary font-weight-bolder dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<span class="svg-icon svg-icon-md">
					<!--begin::Svg Icon | path:assets/media/svg/icons/Design/PenAndRuller.svg-->
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
						<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
							<rect x="0" y="0" width="24" height="24" />
							<path d="M3,16 L5,16 C5.55228475,16 6,15.5522847 6,15 C6,14.4477153 5.55228475,14 5,14 L3,14 L3,12 L5,12 C5.55228475,12 6,11.5522847 6,11 C6,10.4477153 5.55228475,10 5,10 L3,10 L3,8 L5,8 C5.55228475,8 6,7.55228475 6,7 C6,6.44771525 5.55228475,6 5,6 L3,6 L3,4 C3,3.44771525 3.44771525,3 4,3 L10,3 C10.5522847,3 11,3.44771525 11,4 L11,19 C11,19.5522847 10.5522847,20 10,20 L4,20 C3.44771525,20 3,19.5522847 3,19 L3,16 Z" fill="#000000" opacity="0.3" />
							<path d="M16,3 L19,3 C20.1045695,3 21,3.8954305 21,5 L21,15.2485298 C21,15.7329761 20.8241635,16.200956 20.5051534,16.565539 L17.8762883,19.5699562 C17.6944473,19.7777745 17.378566,19.7988332 17.1707477,19.6169922 C17.1540423,19.602375 17.1383289,19.5866616 17.1237117,19.5699562 L14.4948466,16.565539 C14.1758365,16.200956 14,15.7329761 14,15.2485298 L14,5 C14,3.8954305 14.8954305,3 16,3 Z" fill="#000000" />
						</g>
					</svg>
					<!--end::Svg Icon-->
				</span>Export</button>
				<!--begin::Dropdown Menu-->
				<div class="dropdown-menu dropdown-menu-sm dropdown-menu-right">
					<!--begin::Navigation-->
					<ul class="navi flex-column navi-hover py-2">
						<li class="navi-header font-weight-bolder text-uppercase font-size-sm text-primary pb-2">Choose an option:</li>
						<li class="navi-item">
							<a href="#" class="navi-link">
								<span class="navi-icon">
									<i class="la la-print"></i>
								</span>
								<span class="navi-text">Print</span>
							</a>
						</li>
						<li class="navi-item">
							<a href="#" class="navi-link">
								<span class="navi-icon">
									<i class="la la-copy"></i>
								</span>
								<span class="navi-text">Copy</span>
							</a>
						</li>
						<li class="navi-item">
							<a href="#" class="navi-link">
								<span class="navi-icon">
									<i class="la la-file-excel-o"></i>
								</span>
								<span class="navi-text">Excel</span>
							</a>
						</li>
						<li class="navi-item">
							<a href="#" class="navi-link">
								<span class="navi-icon">
									<i class="la la-file-text-o"></i>
								</span>
								<span class="navi-text">CSV</span>
							</a>
						</li>
						<li class="navi-item">
							<a href="#" class="navi-link">
								<span class="navi-icon">
									<i class="la la-file-pdf-o"></i>
								</span>
								<span class="navi-text">PDF</span>
							</a>
						</li>
					</ul>
					<!--end::Navigation-->
				</div>
				<!--end::Dropdown Menu-->
			</div>
			<!--end::Dropdown-->
			<!--begin::Button-->
			<a href="#" class="btn btn-primary font-weight-bolder">
			<span class="svg-icon svg-icon-md">
				<!--begin::Svg Icon | path:assets/media/svg/icons/Design/Flatten.svg-->
				<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
					<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
						<rect x="0" y="0" width="24" height="24" />
						<circle fill="#000000" cx="9" cy="15" r="6" />
						<path d="M8.8012943,7.00241953 C9.83837775,5.20768121 11.7781543,4 14,4 C17.3137085,4 20,6.6862915 20,10 C20,12.2218457 18.7923188,14.1616223 16.9975805,15.1987057 C16.9991904,15.1326658 17,15.0664274 17,15 C17,10.581722 13.418278,7 9,7 C8.93357256,7 8.86733422,7.00080962 8.8012943,7.00241953 Z" fill="#000000" opacity="0.3" />
					</g>
				</svg>
				<!--end::Svg Icon-->
			</span>결재 작성</a>
			<!--end::Button-->
		</div>
	</div>
	<div class="card-body">
		<!--begin: Search Form-->
		<form class="kt-form kt-form--fit mb-15">
			<div class="row mb-6">
				<div class="col-lg-3 mb-lg-0 mb-6">
					<label>번호</label>
					<input type="text" class="form-control datatable-input" placeholder="E.g: 4590" data-col-index="0" />
				</div>
				<div class="col-lg-3 mb-lg-0 mb-6">
					<label>제출자</label>
					<input type="text" class="form-control datatable-input" placeholder="E.g: 37000-300" data-col-index="1" />
				</div>
				<div class="col-lg-3 mb-lg-0 mb-6">
					<label>Country:</label>
					<select class="form-control datatable-input" data-col-index="2">
						<option value="">Select</option>
					</select>
				</div>
				<div class="col-lg-3 mb-lg-0 mb-6">
					<label>Agent:</label>
					<input type="text" class="form-control datatable-input" placeholder="Agent ID or name" data-col-index="4" />
				</div>
			</div>
			<div class="row mb-8">
				<div class="col-lg-3 mb-lg-0 mb-6">
					<label>기간</label>
					<div class="input-daterange input-group" id="kt_datepicker_5">
						<input type="text" class="form-control datatable-input" name="start" placeholder="From" data-col-index="5" />
						<div class="input-group-append">
							<span class="input-group-text">
								<i class="la la-ellipsis-h"></i>
							</span>
						</div>
						<input type="text" class="form-control datatable-input" name="end" placeholder="To" data-col-index="5" />
					</div>
				</div>
				<div class="col-lg-3 mb-lg-0 mb-6">
					<label>상태</label>
					<select class="form-control datatable-input" data-col-index="6">
						<option value="">Select</option>
					</select>
				</div>
				<div class="col-lg-3 mb-lg-0 mb-6">
					<label>Type:</label>
					<select class="form-control datatable-input" data-col-index="7">
						<option value="">Select</option>
						<option value="">Select</option>
						<option value="">Select</option>
						<option value="">Select</option>
					</select>
				</div>
			</div>
			<div class="row mt-8">
				<div class="col-lg-12">
				<button class="btn btn-primary btn-primary--icon" id="kt_search">
					<span>
						<i class="la la-search"></i>
						<span>Search</span>
					</span>
				</button>&#160;&#160;
				<button class="btn btn-secondary btn-secondary--icon" id="kt_reset">
					<span>
						<i class="la la-close"></i>
						<span>Reset</span>
					</span>
				</button></div>
			</div>
		</form>
		<!--begin: Datatable-->
		<!--begin: Datatable-->
		<table class="table table-bordered table-hover table-checkable" id="kt_datatable">
			<thead>
				<tr>
					<th>번호</th>
					<th>제출자</th>
					<th>제목</th>
					<th>결재 구분</th>
					<th>제출일</th>
					<th>완료일</th>
					<th>진행상황</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<td>1</td>
					<td><span class="label label-lg font-weight-bold label-light-info label-inline">인사팀</span>admin</td>
					<td>쉬고싶어</td>
					<td>업무</td>
					<td>2020/07/13</td>
					<td>-</td>
					<td>진행중</td>
				</tr>
			</tfoot>
		</table>
		<!--end: Datatable-->
	</div>
</div>
</div>
</div><!--end::Demo Panel-->
		<script>var HOST_URL = "https://keenthemes.com/metronic/tools/preview";</script>
		<!--begin::Global Config(global config for global JS scripts)-->
		<script>var KTAppSettings = { "breakpoints": { "sm": 576, "md": 768, "lg": 992, "xl": 1200, "xxl": 1200 }, "colors": { "theme": { "base": { "white": "#ffffff", "primary": "#3699FF", "secondary": "#E5EAEE", "success": "#1BC5BD", "info": "#8950FC", "warning": "#FFA800", "danger": "#F64E60", "light": "#F3F6F9", "dark": "#212121" }, "light": { "white": "#ffffff", "primary": "#E1F0FF", "secondary": "#ECF0F3", "success": "#C9F7F5", "info": "#EEE5FF", "warning": "#FFF4DE", "danger": "#FFE2E5", "light": "#F3F6F9", "dark": "#D6D6E0" }, "inverse": { "white": "#ffffff", "primary": "#ffffff", "secondary": "#212121", "success": "#ffffff", "info": "#ffffff", "warning": "#ffffff", "danger": "#ffffff", "light": "#464E5F", "dark": "#ffffff" } }, "gray": { "gray-100": "#F3F6F9", "gray-200": "#ECF0F3", "gray-300": "#E5EAEE", "gray-400": "#D6D6E0", "gray-500": "#B5B5C3", "gray-600": "#80808F", "gray-700": "#464E5F", "gray-800": "#1B283F", "gray-900": "#212121" } }, "font-family": "Poppins" };</script>
		<!--end::Global Config-->
		<!--begin::Global Theme Bundle(used by all pages)-->
		<script src="resources/assets/plugins/global/plugins.bundle.js?v=7.0.4"></script>
		<script src="resources/assets/plugins/custom/prismjs/prismjs.bundle.js?v=7.0.4"></script>
		<script src="resources/assets/js/scripts.bundle.js?v=7.0.4"></script>
		<!--end::Global Theme Bundle-->
		<!--begin::Page Scripts(used by this page)-->
		<script src="resources/assets/js/pages/crud/forms/widgets/bootstrap-datepicker.js?v=7.0.4"></script>
		<!--end::Page Scripts-->
