<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src='resources/js/fullcalendar/core/main.js'></script>
<script src='resources/js/fullcalendar/daygrid/main.js'></script>
<script src='resources/js/fullcalendar/bootstrap/main.js'></script>
<script src='resources/js/fullcalendar/interaction/main.js'></script>
<script src='resources/js/fullcalendar/list/main.js'></script>
<script src='resources/js/fullcalendar/timegrid/main.js'></script>


<link
	href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css'
	rel='stylesheet' />

<link href='resources/assets/css/fullcalendar/core/main.css'
	rel='stylesheet' />
<link href='resources/assets/css/fullcalendar/daygrid/main.css'
	rel='stylesheet' />
<link href='resources/assets/css/fullcalendar/bootstrap/main.css'
	rel='stylesheet' />
<link href='resources/assets/css/fullcalendar/list/main.css'
	rel='stylesheet' />
<link href='resources/assets/css/fullcalendar/timegrid/main.css'
	rel='stylesheet' />

<script>
	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('calendar');

		var calendar = new FullCalendar.Calendar(calendarEl, {
			plugins : [ 'interaction', 'dayGrid', 'timeGrid', 'list' ],
			header : {
				left : 'prev,next today',
				center : 'title',
				right : 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'
			},

			locale : "ko",
			navLinks : true, // can click day/week names to navigate views
			businessHours : true, // display business hours
			editable : true,
			events : [ {
				title : 'Business Lunch',
				start : '2020-07-03T13:00:00',
				constraint : 'businessHours'
			}, {
				title : 'Meeting',
				start : '2020-07-13T11:00:00',
				constraint : 'availableForMeeting', // defined below
				color : '#257e4a'
			}, {
				title : 'Conference',
				start : '2020-07-18',
				end : '2020-07-20'
			}, {
				title : 'Party',
				start : '2020-07-29T20:00:00'
			},

			// areas where "Meeting" must be dropped
			{
				groupId : 'availableForMeeting',
				start : '2020-07-11T10:00:00',
				end : '2020-07-11T16:00:00',
				rendering : 'background'
			}, {
				groupId : 'availableForMeeting',
				start : '2020-07-13T10:00:00',
				end : '2020-07-13T16:00:00',
				rendering : 'background'
			},

			// red areas where no events can be dropped
			{
				start : '2020-07-24',
				end : '2020-07-28',
				overlap : false,
				rendering : 'background',
				color : '#ff9f89'
			}, {
				start : '2020-07-06',
				end : '2020-07-08',
				overlap : false,
				rendering : 'background',
				color : '#ff9f89'
			} ]
		});

		calendar.render();
	});
</script>
<style>
body {
	margin: 40px 10px;
	padding: 0;
	font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
	font-size: 14px;
}

#calendar {
	max-width: 900px;
	margin: 0 auto;
}

.add-button{
	position : absolute;
	top : 1px;
	right : 230px;
	background:#bce8f1;
	border : 0;
	color : white;
	height:33px;
	border-radius:3px;
	width:79px;
}
</style>
</head>
<body>
	<div id="calendar" style="position: relative">
		<div>
			<button class="add-button" type="button" onclick="click_add();">일정
				추가</button>
		</div>
	</div>
</body>
</html>