<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EZWORK | 경조사 게시판 | 글 수정</title>
</head>
<body>
<div class="container">
		<!--begin::Card-->
		<div class="card card-custom">
			<div class="card-header">
				<div class="card-title">
					<i class="flaticon2-chat-1 text-info"></i>
					<h3 class="card-label">&nbsp;글 수정</h3>
					<small>경조사 게시판</small>
				</div>
			</div>
			<!--begin::Form-->
			<form action="BoardModifyAction.ev" method="post"
				enctype="multipart/form-data" name="boardform">
				<input type = "hidden" name="EV_NO" value ="${boarddata.EV_NO }">
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
							<input name="EV_NAME" id="board_name" value="${boarddata.EV_NAME }" readOnly
								type="text" class="form-control">
						</div>
					</div>

					<div class="form-group row">
						<label class="col-lg-3 col-form-label text-lg-right">제목</label>
						<div class="col-lg-7">
							<input name="EV_TITLE" id="board_subject" type="text"
								size="50" maxlength="100" class="form-control"
								value="${boarddata.EV_TITLE }" >
						</div>
					</div>
					<div class="form-group row">
						<label class="col-lg-3 col-form-label text-lg-right">내용</label>
						<div class="col-lg-7">
							<textarea name ="EV_CONTENT" style="height: 325px" class="form-control">${boarddata.EV_CONTENT }</textarea>
						</div>
					</div>

					<c:if test="${boarddata.EV_RE_LEV==0 }">
					<div class="form-group row">
						<label class="col-lg-3 col-form-label text-lg-right">파일첨부</label>
						<div class="col-lg-9">
							<div class="dropzone dropzone-multi" id="kt_dropzone_4">
								<div class="dropzone-panel mb-lg-0 mb-2">
									<input type="file" id="upfile" name="uploadfile"> <span
										id="filevalue">${boarddata.EV_FILE}</span>
								<img src="resources/image/remove.png" alt = "파일삭제" width="10px" class="remove">
								</div>
								<div class="dropzone-items">
								</div>
							</div>
						</div>
					</div>
					</c:if>
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
							<button type="reset" class="btn btn-outline-secondary" onClick="history.go(-1)">취소</button>
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