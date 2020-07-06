<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<base href="../../">
<meta charset="utf-8" />
<title>ezWork | 일정관리</title>
<meta name="description" content="Basic calendar examples" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<link href="resources/assets/plugins/custom/fullcalendar/fullcalendar.bundle.css?v=7.0.4"
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
					<div class="alert-text">jaehee's schedule</div>
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

	<script src="resources/js/fullcalendar/jquery.min.js"></script>
	<script src="resources/assets/plugins/global/plugins.bundle.js"></script>
	<script src="resources/js/fullcalendar/moment.min.js"></script>
	<script
		src="resources/assets/plugins/custom/fullcalendar/fullcalendar.bundle.js"></script>
	<script src="resources/assets/js/pages/features/calendar/basic.js"></script>
	<script src="resources/js/fullcalendar/ko.js"></script>
	<script src="resources/js/fullcalendar/bootstrap-datetimepicker.min.js"></script>
	<script src="resources/assets/plugins/custom/prismjs/prismjs.bundle.js"></script>
	<script src="resources/assets/js/scripts.bundle.js"></script>
	<script src="resources/js/fullcalendar/addEvent.js"></script>
	<script src="resources/js/fullcalendar/editEvent.js"></script>
	<script src="resources/js/fullcalendar/etcSetting.js"></script>
</body>
<!--end::Body-->
</html>
