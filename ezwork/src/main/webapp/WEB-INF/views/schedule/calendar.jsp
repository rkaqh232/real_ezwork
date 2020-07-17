<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.ez.work.domain.Schedule"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
				var calendar = new FullCalendar.Calendar(
						calendarEl,
						{
							plugins : [ 'bootstrap', 'interaction', 'dayGrid',
									'timeGrid', 'list' ],
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
								},
								timeGridWeek : {
									buttonText : '주간'
								},
								timeGridDay : {
									buttonText : '일간'
								}
							},

							defaultView : 'dayGridMonth',
							defaultDate : TODAY,

							editable : true,
							eventLimit : true, // allow "more" link when too many events
							navLinks : true,
							events : [

							],

							eventRender : function(info) {
								var element = $(info.el);

								if (info.event.extendedProps
										&& info.event.extendedProps.description) {
									if (element.hasClass('fc-day-grid-event')) {
										element
												.data(
														'content',
														info.event.extendedProps.description);
										element.data('placement', 'top');
										KTApp.initPopover(element);
									} else if (element
											.hasClass('fc-time-grid-event')) {
										element
												.find('.fc-title')
												.append(
														'<div class="fc-description">'
																+ info.event.extendedProps.description
																+ '</div>');
									} else if (element
											.find('.fc-list-item-title').lenght !== 0) {
										element
												.find('.fc-list-item-title')
												.append(
														'<div class="fc-description">'
																+ info.event.extendedProps.description
																+ '</div>');
									}
								}
							}
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
						<i class="flaticon-event-calendar-symbol text-info"></i> &nbsp;캘린더
					</h5>
					<!--end::Page Title-->
					<small style="color: gray;">일정관리 ㆍ 월간보기</small>
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
						<h3 class="card-label">&nbsp;&nbsp;user님의 캘린더</h3>
					</div>


					<div class="d-flex flex-column-fluid">
						<div class="form-group">
							<label>&nbsp;</label>
							<div class="input-group">
								<input type="text" class="form-control" placeholder="사번으로 검색" />
								<div class="input-group-append">
									<button class="btn btn-outline-info" type="button">검색</button>
								</div>
							</div>
						</div>
					</div>




					<div class="card-toolbar">
						<button type="button" id="addevent"
							class="btn btn-light-info font-weight-bold" data-toggle="modal"
							data-target="#myModal">
							<i class="ki ki-plus icon-md mr-2"></i>일정추가
						</button>
					</div>
					<!-- 일정추가 모달 -->
					<div id="myModal" class="modal fade" role="dialog">
						<div class="modal-dialog">
							<!-- Modal content-->
							<div class="modal-content">
								<div class="modal-header">
									<h4 class="modal-title">
										<i class="flaticon-add text-info"></i>&nbsp;일정 추가
									</h4>
									<button type="button" class="close" data-dismiss="modal">
										<i class="flaticon2-cancel-music"></i>
									</button>
								</div>
								<div class="modal-body">
									<form id="scheduleData">
										<div class="form-group">
											<label>일정명</label> <input type="text"
												class="form-control form-control-solid" name="SCH_TITLE"
												placeholder="일정 제목을 입력하세요." />
										</div>
										<div class="form-group">
											<label>시작날짜</label> <input
												class="form-control form-control-solid" type="date"
												value="2020-08-19" id="startDate"  name="SCH_STARTDATE" /> 
												<br> <label>시작시간</label>
											<input class="form-control form-control-solid" type="time"
												value="13:45:00" id="startTime" name="SCH_ENDDATE" />
										</div>

										<div class="form-group">
											<label>종료날짜</label> <input
												class="form-control form-control-solid" type="date"
												value="2020-08-19" id="endDate" name="SCH_ENDDATE"/> 
												<br> <label>종료시간</label>
											<input class="form-control form-control-solid" type="time"
												value="13:45:00" id="endTime" name="SCH_ENDTIME" />
										</div>

										<div class="form-group">
											<label for="exampleTextarea">상세내용</label>
											<textarea class="form-control form-control-solid" rows="3" name="SCH_CONTENT"></textarea>
										</div>

										<div class="form-group">
											<label>참가자</label> <input type="text"
												class="form-control form-control-solid"
												placeholder="참가자명을 입력하세요" name="SCH_PARTICIPANT" />
										</div>

										<div class="form-group">
											<label>장소</label> <input type="text"
												class="form-control form-control-solid"
												placeholder="장소를 입력하세요" name="SCH_PLACE"/>
										</div>

										<div class="form-group">
											<label>색상</label> <input
												class="form-control  form-control-solid" type="color"
												value="#563d7c" id="example-color-input" name="SCH_COLOR" />
										</div>

										<div class="form-group">
											<label>공개여부&nbsp;&nbsp;</label> <label><input
												class='checkbox checkbox-info' id="edit-open" name="SCH_OPEN"
												value="open" type="checkbox" >&nbsp;비공개</label>
										</div>
								</form>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">취소</button>
									<button type="button" class="btn btn-info" id="save-event" onclick="click_ok();">저장</button>
								</div>

							</div>
						</div>
					</div>
				</div>

				<div class="card-body">
					<div id="kt_calendar"></div>
				</div>
			</div>
			<!--end::Card-->
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
