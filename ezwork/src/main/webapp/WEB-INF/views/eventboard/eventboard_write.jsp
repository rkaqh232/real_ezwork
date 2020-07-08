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
	<!-- <div class="container">
		<div class="card card-custom">
			<div class="card-header">
				<div class="card-title">
					<span class="card-icon"> <i
						class="flaticon2-chat-1 text-primary"></i>
					</span>
					<h3 class="card-label">글등록</h3>
					
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
					<button type="submit" class="btn btn-info">등록</button>
					<button type="reset" class="btn btn-outline-secondary">취소</button>
				</div>
			</div>
		</div>
	</div>

	</div>
	</div>
	 -->
	<div class="container">
		<!--begin::Card-->
		<div class="card card-custom">
			<div class="card-header">
				<div class="card-title">
					<i class="flaticon2-chat-1 text-info"></i>
					<h3 class="card-label">&nbsp;글 등록</h3>
					<small>경조사게시판</small>
				</div>
			</div>
			<!--begin::Form-->
			<form>
				<div class="card-body">
					<div class="form-group row">
						<label class="col-lg-3 col-form-label text-lg-right">말머리
							선택</label>
								<div class="col-lg-2">
							<div class="rows">
								<select class="form-control" id="viewcount">
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
							<input name="BOARD_NAME"
							id="board_name" value="인사팀" readOnly type="text" size="10"
							maxlength="30" class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-lg-3 col-form-label text-lg-right">비밀번호</label>
						<div class="col-lg-4">
							<input type="email" class="form-control"
								placeholder="Enter email" name="email">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-lg-3 col-form-label text-lg-right">내용</label>
						<div class="col-lg-7">
							<textarea class="form-control" rows="3"
								placeholder="Please enter your message"></textarea>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-lg-3 col-form-label text-lg-right">파일첨부</label>
						<div class="col-lg-9">
							<div class="dropzone dropzone-multi" id="kt_dropzone_4">
								<div class="dropzone-panel mb-lg-0 mb-2">
									<a
										class="dropzone-select btn btn-light-info font-weight-bold btn-sm dz-clickable">Attach
										files</a> <a
										class="dropzone-upload btn btn-light-info font-weight-bold btn-sm">Upload
										All</a> <a
										class="dropzone-remove-all btn btn-light-info font-weight-bold btn-sm">Remove
										All</a>
								</div>
								<div class="dropzone-items"></div>
								<div class="dz-default dz-message">
									<button class="dz-button" type="button">Drop files
										here to upload</button>
								</div>
							</div>
							<span class="form-text text-muted">Max file size is 1MB
								and max number of files is 5.</span>
						</div>
					</div>
				</div>
				<div class="card-footer">
					<div class="row">
						<div class="col-lg-3"></div>
						<div class="col-lg-9">
							<button type="submit" class="btn btn-info">등록</button>
							<button type="reset" class="btn btn-outline-secondary">취소</button>
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