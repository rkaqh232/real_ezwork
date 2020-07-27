<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/assets/css/pages/wizard/wizard-4.css?v=7.0.4"
	rel="stylesheet" type="text/css" />
<script src="resources/js/jquery-3.5.0.js"></script>
<!-- <script src="resources/js/writeform.js"></script> -->


</head>
<body>

	<div class="container">
		<!--begin::Card-->
		<div class="card card-custom">
			<div class="card-header">
				<div class="card-title">
					<i class="flaticon2-chat-1 text-info"></i>
					<h3 class="card-label">&nbsp;글 등록</h3>
					<small>경조사 게시판</small>
				</div>
			</div>
			<!--begin::Form-->
			<form action="Board_write_ok.ev" method="post"
				enctype="multipart/form-data" name="boardform">
				<div class="card-body">
					<div class="form-group row">
						<label class="col-lg-3 col-form-label text-lg-right">말머리
							선택</label>
						<div class="col-lg-2">
							<div class="rows">
								<select name ="EV_SORT" class="form-control" id="viewcount">
									<option value="결혼" selected>결혼</option>
									<option value="부고">부고</option>
									<option value="기타">기타</option>
								</select>
							</div>
						</div>
					</div>

					<div class="form-group row">
						<label class="col-lg-3 col-form-label text-lg-right">글쓴이</label>
						<div class="col-lg-4">
							<input name="EV_NAME" id="board_name" value="인사팀" readOnly
								type="text" size="10" maxlength="30" class="form-control">
						</div>
					</div>

					<div class="form-group row">
						<label class="col-lg-3 col-form-label text-lg-right">제목</label>
						<div class="col-lg-7">
							<input name="EV_TITLE" id="board_subject" type="text"
								size="50" maxlength="100" class="form-control"
								placeholder="제목을 입력하세요">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-lg-3 col-form-label text-lg-right">내용</label>
						<div class="col-lg-7">
							<textarea name ="EV_CONTENT" style="height: 325px" class="form-control" rows="3" placeholder="내용을 입력하세요"></textarea>
						</div>
					</div>

					<div class="form-group row">
						<label class="col-lg-3 col-form-label text-lg-right">파일첨부</label>
						<div class="col-lg-9">
							<div class="dropzone dropzone-multi" id="kt_dropzone_4">
								<div class="dropzone-panel mb-lg-0 mb-2">
									<label for="upfile">
										<input type="file" id="upfile" name="uploadfile" style="display: none;" />
										<span class="svg-icon svg-icon-primary svg-icon-2x"><!--begin::Svg Icon | path:C:\wamp64\www\keenthemes\themes\metronic\theme\html\demo1\dist/../src/media/svg/icons\Files\Cloud-upload.svg--><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
    									<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        								<polygon points="0 0 24 0 24 24 0 24"/>
        								<path d="M5.74714567,13.0425758 C4.09410362,11.9740356 3,10.1147886 3,8 C3,4.6862915 5.6862915,2 9,2 C11.7957591,2 14.1449096,3.91215918 14.8109738,6.5 L17.25,6.5 C19.3210678,6.5 21,8.17893219 21,10.25 C21,12.3210678 19.3210678,14 17.25,14 L8.25,14 C7.28817895,14 6.41093178,13.6378962 5.74714567,13.0425758 Z" fill="#000000" opacity="0.3"/>
        								<path d="M11.1288761,15.7336977 L11.1288761,17.6901712 L9.12120481,17.6901712 C8.84506244,17.6901712 8.62120481,17.9140288 8.62120481,18.1901712 L8.62120481,19.2134699 C8.62120481,19.4896123 8.84506244,19.7134699 9.12120481,19.7134699 L11.1288761,19.7134699 L11.1288761,21.6699434 C11.1288761,21.9460858 11.3527337,22.1699434 11.6288761,22.1699434 C11.7471877,22.1699434 11.8616664,22.1279896 11.951961,22.0515402 L15.4576222,19.0834174 C15.6683723,18.9049825 15.6945689,18.5894857 15.5161341,18.3787356 C15.4982803,18.3576485 15.4787093,18.3380775 15.4576222,18.3202237 L11.951961,15.3521009 C11.7412109,15.173666 11.4257142,15.1998627 11.2472793,15.4106128 C11.1708299,15.5009075 11.1288761,15.6153861 11.1288761,15.7336977 Z" fill="#000000" fill-rule="nonzero" transform="translate(11.959697, 18.661508) rotate(-90.000000) translate(-11.959697, -18.661508) "/>
    									</g>
										</svg><!--end::Svg Icon--></span>
									</label> 
									<span id="filevalue"></span>
								</div>
								<div class="dropzone-items"></div>
							</div>
						</div>
					</div>

					<div class="form-group row">
						<label class="col-lg-3 col-form-label text-lg-right">비밀번호</label>
						<div class="col-lg-4">
							<input type="password" class="form-control" id="pass"
								placeholder="비밀번호를 입력하세요" name="EV_PASS">
						</div>
					</div>
				</div>
				<div class="card-footer">
					<div class="row">
						<div class="col-lg-3"></div>
						<div class="col-lg-9">
							<button type="submit" class="btn btn-info">등록</button>
							<a href="javascript:window.history.back();" class="btn btn-outline-secondary">취소</button>
						</div>
					</div>
				</div>
			</form>
			<!--end::Form-->
		</div>
		<!--end::Card-->
	</div>

</body>
</html>