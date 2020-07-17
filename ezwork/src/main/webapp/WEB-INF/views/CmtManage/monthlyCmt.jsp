<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
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

<script>
	"use strict";

	var KTCalendarBasic = function() {

		return {
			//main function to initiate the module
			init : function() {
				var todayDate = moment().startOf('day');
				var YM = todayDate.format('YYYY-MM');
				var YESTERDAY = todayDate.clone().subtract(1, 'day').format(
						'YYYY-MM-DD');
				var TODAY = todayDate.format('YYYY-MM-DD');
				var TOMORROW = todayDate.clone().add(1, 'day').format(
						'YYYY-MM-DD');

				var calendarEl = document.getElementById('kt_calendar');
				var calendar = new FullCalendar.Calendar(calendarEl,
						{
							plugins : [ 'bootstrap', 'interaction', 'dayGrid'
								 ],
							themeSystem : 'bootstrap',

							isRTL : KTUtil.isRTL(),

							header : {
								left : 'prev,next today',
								center : 'title',
								right : 'dayGridMonth,timeGridWeek,timeGridDay'
							},
							locale : "ko",
							height : 800,
							contentHeight : 780,
							aspectRatio : 3, // see: https://fullcalendar.io/docs/aspectRatio

							nowIndicator : true,
							now : TODAY + 'T09:25:00', // just for demo

							views : {
								dayGridMonth : {
									buttonText : '월간'
								}
							},

							defaultView : 'dayGridMonth',
							defaultDate : TODAY,

							editable : true,
							eventLimit : true, // allow "more" link when too many events
							navLinks : true,
							events : ${cmtarray}
			
				            });

				calendar.render();
			}
		};
	}();
	
	jQuery(document).ready(function() {
		KTCalendarBasic.init();
	});
	
</script>
</head>
<body>
	<!--begin::Content-->
	<div class="subheader py-2 py-lg-4 subheader-solid" id="kt_subheader"
		style="margin-top: -25px;">
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
						<i class="flaticon-event-calendar-symbol text-info"></i> &nbsp;월간
						근태 조회

					</h5>
					<!--end::Page Title-->
					<small style="color: gray;">근태관리</small>
				</div>
				<!--end::Page Heading-->
			</div>
			<!--end::Info-->

		</div>
	</div>


	<!--begin::Entry-->


	<div class="d-flex flex-column-fluid">
		<!--begin::Container-->
		<div class="container">
			<!--begin::Card-->
			<div class="card card-custom" style="margin-top: 28px;">
				<div class="card-header">
					<div class="card-title">
						<i class="flaticon-calendar-3 text-info"></i>
						<h3 class="card-label">&nbsp;&nbsp;월간 근태 조회</h3>
					</div>
				</div>
				<div class="card-body">
					<div id="kt_calendar"></div>
				</div>
			</div>
		</div>
	</div>
	<!--end::Card-->


	<script src="resources/js/fullcalendar/jquery.min.js"></script>
	<script src="resources/assets/plugins/global/plugins.bundle.js"></script>
	<script src="resources/js/fullcalendar/moment.min.js"></script>
	<script
		src="resources/assets/plugins/custom/fullcalendar/fullcalendar.bundle.js"></script>
	<!--  	<script src="resources/assets/js/pages/features/calendar/basic.js"></script>-->
	<script src="resources/js/fullcalendar/ko.js"></script>
	<script src="resources/js/fullcalendar/bootstrap-datetimepicker.min.js"></script>
	<script src="resources/assets/plugins/custom/prismjs/prismjs.bundle.js"></script>
	<script src="resources/assets/js/scripts.bundle.js"></script>
	<!--  	<script src="resources/js/fullcalendar/addEvent.js"></script>
		<script src="resources/js/fullcalendar/editEvent.js"></script>
		<script src="resources/js/fullcalendar/etcSetting.js"></script>-->
</body>
<!--end::Body-->
</html>
