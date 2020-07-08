<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/js/writeform.js"></script>
</head>
<body>
	<div class="container">
		<div class="card card-custom">
			<div class="card-header">
				<div class="card-title">
					<span class="card-icon"> <i
						class="flaticon2-chat-1 text-primary"></i>
					</span>
					<h3 class="card-label">글등록</h3>
				</div>
				


				<div class="card-toolbar"></div>
				<div class="card-body">
					<form action="BoardAddAction.bo" method="post"
						enctype="multipart/form-data" name="boardform">
						<div class="form-group">
							<label for="board_name">글쓴이</label> <input name="BOARD_NAME"
								id="board_name" value="인사팀" readOnly type="text" size="10"
								maxlength="30" class="form-control"
								placeholder="Enter board_name">
						</div>
						<div class="form-group">
							<label for="board_pass">비밀번호</label> <input name="BOARD_PASS"
								id="board_pass" type="password" size="10" maxlength="30"
								class="form-control" placeholder="Enter board_pass">
						</div>
						<div class="form-group">
							<label for="board_subject">제목</label> <input name="BOARD_SUBJECT"
								id="board_subject" type="text" size="50" maxlength="100"
								class="form-control" placeholder="Enter board_subject">
						</div>
						<div class="form-group">
							<label for="board_content">내용</label>
							<textarea name="BOARD_CONTENT" id="board_content" cols="67"
								rows="10" class="form-control"></textarea>
						</div>
						<div class="form-group">
							<label for="board_file">파일 첨부</label> <label for="upfile">
								<img src="resources/image/attach.png" alt="파일첨부">
							</label> <input type="file" id="upfile" name="uploadfile"> <span
								id="filevalue"></span>
						</div>

					</form>
				</div>
				<div class="card-footer d-flex justify-content-between">
					<div class="form-group">
						<button type="submit" class="btn btn-primary">등록</button>
						<button type="reset" class="btn btn-danger">취소</button>
					</div>
				</div>
			</div>
		</div>


	</div>
</body>
</html>