<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<base href="../../">
<meta charset="utf-8" />
<title>ezWork | 일정관리</title>
<meta name="description" content="Basic calendar examples" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<link
	href="resources/assets/plugins/custom/fullcalendar/fullcalendar.bundle.css?v=7.0.4"
	rel="stylesheet" type="text/css" />
<link href="resources/assets/plugins/global/plugins.bundle.css?v=7.0.4"
	rel="stylesheet" type="text/css" />
<link
	href="resources/assets/plugins/custom/prismjs/prismjs.bundle.css?v=7.0.4"
	rel="stylesheet" type="text/css" />
<link href="resources/assets/css/style.bundle.css?v=7.0.4"
	rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="assets/media/logos/favicon.ico" />
</head>
<body>
	<!--begin::Content-->
	<div class="content d-flex flex-column flex-column-fluid"
		id="kt_content">

		<!--begin::Entry-->
		<div class="d-flex flex-column-fluid">
			<!--begin::Container-->
			<div class="container">
				<!--begin::Notice-->
				<div
					class="alert alert-custom alert-white alert-shadow fade show gutter-b"
					role="alert">
					<div class="alert-text">
						jaehee's schedule
					</div>
				</div>
				<!--end::Notice-->
				<!--begin::Example-->
				<!--begin::Card-->
				<div class="card card-custom">
					<div class="card-header">
						<div class="card-title">
							<h3 class="card-label">일정관리</h3>
						</div>
						<div class="card-toolbar">
							<a href="#" class="btn btn-light-primary font-weight-bold"> <i
								class="ki ki-plus icon-md mr-2"></i>Add Event
							</a>
						</div>
					</div>
					<div class="card-body">
						<div id="kt_calendar"></div>
					</div>
				</div>
				<!--end::Card-->
			</div>
		</div>
	</div>
	<!--end::Card-->
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
						"primary" : "#3699FF",
						"secondary" : "#E5EAEE",
						"success" : "#1BC5BD",
						"info" : "#8950FC",
						"warning" : "#FFA800",
						"danger" : "#F64E60",
						"light" : "#F3F6F9",
						"dark" : "#212121"
					},
					"light" : {
						"white" : "#ffffff",
						"primary" : "#E1F0FF",
						"secondary" : "#ECF0F3",
						"success" : "#C9F7F5",
						"info" : "#EEE5FF",
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
	<script src="resources/assets/plugins/global/plugins.bundle.js"></script>
	<script src="resources/assets/plugins/custom/prismjs/prismjs.bundle.js"></script>
	<script src="resources/assets/js/scripts.bundle.js"></script>
	<!--end::Global Theme Bundle-->
	<!--begin::Page Vendors(used by this page)-->
	<script
		src="resources/assets/plugins/custom/fullcalendar/fullcalendar.bundle.js"></script>
	<!--end::Page Vendors-->
	<!--begin::Page Scripts(used by this page)-->
	<script src="resources/assets/js/pages/features/calendar/basic.js"></script>
	<!--end::Page Scripts-->
</body>
<!--end::Body-->
</html>
