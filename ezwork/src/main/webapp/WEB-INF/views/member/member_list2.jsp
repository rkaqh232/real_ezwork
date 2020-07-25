<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<link href="resources/assets/css/pages/wizard/wizard-4.css?v=7.0.4"
	rel="stylesheet" type="text/css" />
<style>
a {
	font-size: 12px !important;
}

#kt_content {
	padding-top: 0px;
}

</style>
</head>
<body>
	<div class="content d-flex flex-column flex-column-fluid"
		id="kt_content">
		<div class="subheader py-2 py-lg-4 subheader-solid" id="kt_subheader">
			<div
				class="container-fluid d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
				<!--begin::Info-->
				<div class="d-flex align-items-center flex-wrap mr-1">
					<!--begin::Mobile Toggle-->
					<button
						class="burger-icon burger-icon-left mr-4 d-inline-block d-lg-none"
						id="kt_subheader_mobile_toggle">
						<span></span>
					</button>
					<!--end::Mobile Toggle-->
					<!--begin::Page Heading-->
					<div class="d-flex align-items-baseline mr-5">
						<!--begin::Page Title-->
						<h5 class="text-dark font-weight-bold my-2 mr-5">
							<i class="flaticon-users-1 text-info"></i> &nbsp;사원 명부/조회
						</h5>
						<!--end::Page Title-->
						<small style="color: gray;">사원조회</small>
					</div>
					<!--end::Page Heading-->
				</div>
				<!--end::Info-->

			</div>
		</div>
		<!--end::Head-->
		<!--begin::Body-->

		<div class="d-flex flex-column-fluid">
			<!--begin::Container-->
			<div class="container" style="margin-top: 23px;">
				<!--begin::Notice-->

				<!--end::Notice-->
				<!--begin::Card-->
				<div class="card card-custom">
					<div class="card-header flex-wrap border-0 pt-6 pb-0">
						<div class="card-title">
							<h3 class="card-label">
								전체 임직원 목록 <span class="d-block text-muted pt-2 font-size-sm">관리자모드에서는
									사원 정보 수정, 사원 삭제가 가능합니다.</span>
							</h3>
						</div>
						<div class="card-toolbar">

							<!--begin::신규 사원 등록신규 사원 등록신규 사원 등록Button-->
							<a href="insert.hr" class="btn btn-primary font-weight-bolder">
								<span class="svg-icon svg-icon-md"> <!--begin::Svg Icon | path:assets/media/svg/icons/Design/Flatten.svg-->
									<svg xmlns="http://www.w3.org/2000/svg"
										xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
										height="24px" viewBox="0 0 24 24" version="1.1">
													<g stroke="none" stroke-width="1" fill="none"
											fill-rule="evenodd">
														<rect x="0" y="0" width="24" height="24" />
														<circle fill="#000000" cx="9" cy="15" r="6" />
														<path
											d="M8.8012943,7.00241953 C9.83837775,5.20768121 11.7781543,4 14,4 C17.3137085,4 20,6.6862915 20,10 C20,12.2218457 18.7923188,14.1616223 16.9975805,15.1987057 C16.9991904,15.1326658 17,15.0664274 17,15 C17,10.581722 13.418278,7 9,7 C8.93357256,7 8.86733422,7.00080962 8.8012943,7.00241953 Z"
											fill="#000000" opacity="0.3" />
													</g>
												</svg> <!--end::Svg Icon-->
							</span>신규 사원 등록
							</a>
							<!--end::신규 사원 등록 신규 사원 등록신규 사원 등록Button-->




						</div>
					</div>






					<div class="card-body">
						<!--begin: Search Form-->
						<!--begin::Search Form-->
						<div class="mb-7">
							<form action="list.hr">
								<div class="row align-items-center">
									<div class="col-lg-9 col-xl-8">

										<div class="row align-items-center">
											<div class="col-md-4 my-2 my-md-0">


												<div class="d-flex align-items-center">
													<label class="mr-3 mb-0 d-none d-md-block"></label> 
													
													<select class="form-control" id="viewcount" name="search_field">
														<option value="전체목록">전체 목록</option>
														<option value="0">이름</option>
														<option value="1">부서</option>
														<option value="2">연락처</option>

													</select>
												</div>

											</div>
											<div class="col-md-8 my-2 my-md-0">
												<div class="input-icon">
													<input name="search_word" type="text" class="form-control"
														placeholder="검색어를 입력하세요" value="${search_word}" /> <span>
														<i class="flaticon2-search-1 text-muted"></i>
													</span>
												</div>
											</div>

										</div>
							</form>
						</div>
						<div class="col-lg-3 col-xl-4 mt-5 mt-lg-0">
							<button class="btn btn-light-primary px-6 font-weight-bold"
								type="submit">
								Search</a>
						</div>
						</div>
					</form>
				</div>
				<!--end::Search Form-->
				<!--end: Search Form-->
				<!--begin: Datatable-->
				<table class="datatable datatable-bordered datatable-head-custom"
					id="kt_datatable">
					<thead>
						<tr>
							<th title="Field #1">사원번호</th>
							<th title="Field #2">이름</th>
							<th title="Field #3">부서</th>
							<th title="Field #4">직급</th>
							<th title="Field #5">생년월일</th>
							<th>입사일</th>
							<th title="Field #6">이메일</th>
							<th title="Field #6">연락처</th>
							<th>연락처</th>
	
	
					
						</tr>
					</thead>
					<tbody>
						<c:forEach var="m" items="${mem_info}">
						<tr>
							<td>${m.m_CODE}</td>
							<td>${m.m_NAME}</td>
							<td>${m.m_PART_C}</td>
							<td>level ${m.m_LEVEL}</td>
							<td>${m.m_BIRTH}</td>
							<td>${m.m_JOIN_DATE}</td>
							<td>${m.m_EMAIL}</td>
							<td>${m.m_MOBILE_TEL}</td>
	
							
						</tr>
						</c:forEach>
					</tbody>
				</table>

				
				<!--end: Datatable-->
			</div>
		</div>
		<!--end::Card-->
	</div>
	<!--end::Container-->
	</div>
	<!--end::Entry-->
	</div>









	<!--end::Scrolltop-->
	<!--begin::Sticky Toolbar-->
	<ul class="sticky-toolbar nav flex-column pl-2 pr-2 pt-3 pb-3 mt-4">
		<!--begin::Item-->
		<li class="nav-item mb-2" id="kt_demo_panel_toggle"
			data-toggle="tooltip" title="Check out more demos"
			data-placement="right"><a
			class="btn btn-sm btn-icon btn-bg-light btn-icon-success btn-hover-success"
			href="#"> <i class="flaticon2-drop"></i>
		</a></li>
		<!--end::Item-->
		<!--begin::Item-->
		<li class="nav-item mb-2" data-toggle="tooltip" title="Layout Builder"
			data-placement="left"><a
			class="btn btn-sm btn-icon btn-bg-light btn-icon-primary btn-hover-primary"
			href="https://keenthemes.com/metronic/preview/demo3/builder.html"
			target="_blank"> <i class="flaticon2-gear"></i>
		</a></li>
		<!--end::Item-->
		<!--begin::Item-->
		<li class="nav-item mb-2" data-toggle="tooltip" title="Documentation"
			data-placement="left"><a
			class="btn btn-sm btn-icon btn-bg-light btn-icon-warning btn-hover-warning"
			href="https://keenthemes.com/metronic/?page=docs" target="_blank">
				<i class="flaticon2-telegram-logo"></i>
		</a></li>
		<!--end::Item-->
	</ul>
	<!--end::Sticky Toolbar-->
	<!--begin::Demo Panel-->

	<!--end::Demo Panel-->
	<script>
		var HOST_URL = "https://keenthemes.com/metronic/tools/preview";
	</script>
	<!--begin::Global Config(global config for global JS scripts)-->
	<script>
		var KTAppSettings = {
			"breakpoints" : {
				"sm" : 576,
				"md" : 768,
				"lg" : 992,
				"xl" : 1200,
				"xxl" : 1200
			},
			"colors" : {
				"theme" : {
					"base" : {
						"white" : "#ffffff",
						"primary" : "#1BC5BD",
						"secondary" : "#E5EAEE",
						"success" : "#1BC5BD",
						"info" : "#6993FF",
						"warning" : "#FFA800",
						"danger" : "#F64E60",
						"light" : "#F3F6F9",
						"dark" : "#212121"
					},
					"light" : {
						"white" : "#ffffff",
						"primary" : "#1BC5BD",
						"secondary" : "#ECF0F3",
						"success" : "#C9F7F5",
						"info" : "#E1E9FF",
						"warning" : "#FFF4DE",
						"danger" : "#FFE2E5",
						"light" : "#F3F6F9",
						"dark" : "#D6D6E0"
					},
					"inverse" : {
						"white" : "#ffffff",
						"primary" : "#ffffff",
						"secondary" : "#212121",
						"success" : "#ffffff",
						"info" : "#ffffff",
						"warning" : "#ffffff",
						"danger" : "#ffffff",
						"light" : "#464E5F",
						"dark" : "#ffffff"
					}
				},
				"gray" : {
					"gray-100" : "#F3F6F9",
					"gray-200" : "#ECF0F3",
					"gray-300" : "#E5EAEE",
					"gray-400" : "#D6D6E0",
					"gray-500" : "#B5B5C3",
					"gray-600" : "#80808F",
					"gray-700" : "#464E5F",
					"gray-800" : "#1B283F",
					"gray-900" : "#212121"
				}
			},
			"font-family" : "Poppins"
		};
	</script>
	<!--end::Global Config-->
	<!--begin::Global Theme Bundle(used by all pages)-->
	<script src="resources/assets/plugins/global/plugins.bundle.js?v=7.0.4"></script>
	<script
		src="resources/assets/plugins/custom/prismjs/prismjs.bundle.js?v=7.0.4"></script>
	<script src="resources/assets/js/scripts.bundle.js?v=7.0.4"></script>
	<!--end::Global Theme Bundle-->
	<!--begin::Page Scripts(used by this page)-->

 	<!--   <script
		src="resources/assets/js/pages/crud/ktdatatable/advanced/column-rendering.js?v=7.0.4"></script> -->
	<script src="resources/js/member_list.js"></script>	
	<link rel="stylesheet"
		href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />
	<!--end::Fonts-->
	<!--begin::Global Theme Styles(used by all pages)-->
	<link href="resources/assets/plugins/global/plugins.bundle.css?v=7.0.4"
		rel="stylesheet" type="text/css" />
	<link
		href="resources/assets/plugins/custom/prismjs/prismjs.bundle.css?v=7.0.4"
		rel="stylesheet" type="text/css" />
	<link href="resources/assets/css/style.bundle.css?v=7.0.4"
		rel="stylesheet" type="text/css" />
	<link rel="shortcut icon"
		href="resources/assets/media/logos/favicon.ico" />
		<script src="resources/assets/js/pages/crud/ktdatatable/base/html-table.js?v=7.0.4"></script>
	<!--end::Page Scripts-->
</body>
<!--end::Body-->
</html>