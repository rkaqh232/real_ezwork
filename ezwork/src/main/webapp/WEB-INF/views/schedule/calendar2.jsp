<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>EZWORK - 일정관리</title>

 <link rel="stylesheet" href="resources/assets/css/fullcalendar/fullcalendar.min.css" />
   <link rel="stylesheet" href="resources/assets/css/fullcalendar/bootstrap.min.css"> 
    <link rel="stylesheet" href='resources/assets/css/fullcalendar/select2.min.css' />
    <link rel="stylesheet" href='resources/assets/css/fullcalendar/bootstrap-datetimepicker.min.css' />  

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,500,600">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

   <link rel="stylesheet" href="resources/assets/css/fullcalendar/main.css">

</head>

<body>
    <div class="container">
        <!-- 일자 클릭시 메뉴오픈 -->
        <div id="contextMenu" class="dropdown clearfix">
            <ul class="dropdown-menu dropNewEvent" role="menu" aria-labelledby="dropdownMenu"
                style="display:block;position:static;margin-bottom:5px;">
                <li><a tabindex="-1" href="#">일정등록</a></li>
                <li class="divider"></li>
                <li><a tabindex="-1" href="#" data-role="close">닫기</a></li>
            </ul>
        </div>

        <div id="wrapper">
            <div id="loading"></div>
            <div id="calendar"></div>
        </div>

        <!-- 일정 추가 MODAL -->
        <div class="modal fade" tabindex="-1" role="dialog" id="eventModal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title"></h4>
                    </div>
                    <div class="modal-body">

                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-allDay">구분</label>
                              <label><input class='allDayNewEvent' id="edit-allDay" name="sort" value = "schedule" type="radio">스케줄</label>&nbsp;&nbsp;
                                <label><input class='allDayNewEvent' id="edit-allDay" name= "sort" value ="event" type="radio">이벤트</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-title">일정명</label>
                                <input class="inputModal" type="text" name="edit-title" id="edit-title"
                                    required="required" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-start">시작시간</label>
                                <input class="inputModal" type="text" name="edit-start" id="edit-start" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-end">종료시간</label>
                                <input class="inputModal" type="text" name="edit-end" id="edit-end" />
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-desc">상세내용</label>
                                <textarea rows="4" cols="50" class="inputModal" name="edit-desc"
                                    id="edit-desc"></textarea>
                            </div>
                        </div>
                          <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-participant">참가자</label>
                                <input class="inputModal" type="text" name="edit-participant" id="edit-participant" />
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-place">장소</label>
                                <input class="inputModal" type="text" name="edit-place" id="edit-place" />
                            </div>
                        </div>
                       
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-color">색상</label>
                                <select class="inputModal" name="color" id="edit-color">
                                    <option value="#D25565" style="color:#D25565;">red</option>
                                    <option value="#9775fa" style="color:#9775fa;">purple</option>
                                    <option value="#ffa94d" style="color:#ffa94d;">orange</option>
                                    <option value="#74c0fc" style="color:#74c0fc;">blue</option>
                                    <option value="#f06595" style="color:#f06595;">pink</option>
                                    <option value="#63e6be" style="color:#63e6be;">light green</option>
                                    <option value="#a9e34b" style="color:#a9e34b;">green</option>
                                    <option value="#4d638c" style="color:#4d638c;">navy blue</option>
                                    <option value="#495057" style="color:#495057;">black</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-allDay">공개여부</label>
                              <label><input class='allDayNewEvent' id="edit-open" name="open" value = "open" type="checkbox">&nbsp;비공개</label>
                            </div>
                        </div>
                       
                    </div>
                    <div class="modal-footer modalBtnContainer-addEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <button type="button" class="btn btn-primary" id="save-event">저장</button>
                    </div>
                    <div class="modal-footer modalBtnContainer-modifyEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                        <button type="button" class="btn btn-danger" id="deleteEvent">삭제</button>
                        <button type="button" class="btn btn-primary" id="updateEvent">저장</button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
		<br>
        <div class="panel panel-default">

            <div class="panel-heading">
                <h3 class="panel-title">검색</h3>
            </div>

                <div class="col-lg-6">
                    <div class="input-group">
                        <input class="checkbox-inline"><button>검색</button>
                    </div>
                </div>

            </div>
        </div>
        <!-- /.filter panel -->
    <!-- /.container -->

    <script src="resources/js/fullcalendar/jquery.min.js"></script>
    <script src="resources/js/fullcalendar/bootstrap.min.js"></script>
    <script src="resources/js/fullcalendar/moment.min.js"></script>
    <script src="resources/js/fullcalendar/fullcalendar.min.js"></script>
    <script src="resources/js/fullcalendar/ko.js"></script>
    <script src="resources/js/fullcalendar/select2.min.js"></script>
    <script src="resources/js/fullcalendar/bootstrap-datetimepicker.min.js"></script>
    <script src="resources/js/fullcalendar/main.js"></script>
    <script src="resources/js/fullcalendar/addEvent.js"></script>
    <script src="resources/js/fullcalendar/editEvent.js"></script>
    <script src="resources/js/fullcalendar/etcSetting.js"></script>
</body>
</html>