<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

   <link href='resources/assets/css/fullcalendar/core/main.css' rel='stylesheet' />
    <link href='resources/assets/css/fullcalendar/daygrid/main.css' rel='stylesheet' />
    
    <script src='resources/assets/js/fullcalendar/core/main.js'></script>
     <script src='resources/assets/js/fullcalendar/daygrid/main.js'></script>

    <script>

      document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');

        var calendar = new FullCalendar.Calendar(calendarEl, {
          plugins: [ 'dayGrid' ]
        });

        calendar.render();
      });

    </script>
  </head>
  <body>

    <div id='calendar'></div>

  </body>
</html>