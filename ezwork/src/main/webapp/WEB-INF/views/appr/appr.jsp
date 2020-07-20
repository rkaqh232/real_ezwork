<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="resources/js/jquery-3.5.0.js"></script>
<script src="resources/js/appr/apprlist.js"></script>
<style>
p{margin-top:0rem;
  margin-bottom:0rem;
	}
table, tr, th ,td{
	text-align:center;
}
tr>th:nth-child(1){width:5%}
tr>th:nth-child(2){width:15%}
tr>th:nth-child(3){width:40%;}
tr>th:nth-child(4){width:7%}
tr>th:nth-child(5){width:10%}
tr>th:nth-child(6){width:10%}
.modal {
	display: none;
}


</style>
<div class="d-flex flex-column-fluid">
<div class="container">
<div class="card card-custom">
	<div class="card-header">
		<div class="card-title">
			<span class="card-icon">
				<i class="flaticon2-delivery-package text-primary"></i>
			</span>
			<h3 class="card-label">전자 결재</h3>
		</div>
		<div class="card-toolbar">						
			<!--begin::Button-->
			<button data-toggle="modal" data-target="#myModal" class="btn btn-primary font-weight-bolder">
			<span class="svg-icon svg-icon-md">
				<!--begin::Svg Icon | path:assets/media/svg/icons/Design/Flatten.svg-->
				<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
					<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
						<rect x="0" y="0" width="24" height="24" />
						<circle fill="#000000" cx="9" cy="15" r="6" />
						<path d="M8.8012943,7.00241953 C9.83837775,5.20768121 11.7781543,4 14,4 C17.3137085,4 20,6.6862915 20,10 C20,12.2218457 18.7923188,14.1616223 16.9975805,15.1987057 C16.9991904,15.1326658 17,15.0664274 17,15 C17,10.581722 13.418278,7 9,7 C8.93357256,7 8.86733422,7.00080962 8.8012943,7.00241953 Z" fill="#000000" opacity="0.3" />
					</g>
				</svg>
				<!--end::Svg Icon-->
			</span>결재 작성</button>
			<!--end::Button-->
		</div>
	</div>
	<div class="card-body">
		<!--begin: Search Form-->
		<form class="kt-form kt-form--fit mb-15">
			<div class="row mb-6">
				<div class="col-lg-3 mb-lg-0 mb-6">
					<label>번호</label>
					<input type="text" class="form-control datatable-input" placeholder="E.g: 4590" data-col-index="0" />
				</div>
				<div class="col-lg-3 mb-lg-0 mb-6">
					<label>제출자</label>
					<input type="text" class="form-control datatable-input" placeholder="E.g: 37000-300" data-col-index="1" />
				</div>
				<div class="col-lg-3 mb-lg-0 mb-6">
					<label>Country:</label>
					<select class="form-control datatable-input" data-col-index="2">
						<option value="">Select</option>
					</select>
				</div>
				<div class="col-lg-3 mb-lg-0 mb-6">
					<label>Agent:</label>
					<input type="text" class="form-control datatable-input" placeholder="Agent ID or name" data-col-index="4" />
				</div>
			</div>
			<div class="row mb-8">
				<div class="col-lg-3 mb-lg-0 mb-6">
					<label>기간</label>
					<div class="input-daterange input-group" id="kt_datepicker_5">
						<input type="text" class="form-control datatable-input" name="start" placeholder="From" data-col-index="5" />
						<div class="input-group-append">
							<span class="input-group-text">
								<i class="la la-ellipsis-h"></i>
							</span>
						</div>
						<input type="text" class="form-control datatable-input" name="end" placeholder="To" data-col-index="5" />
					</div>
				</div>
				<div class="col-lg-3 mb-lg-0 mb-6">
					<label>상태</label>
					<select class="form-control datatable-input" data-col-index="6">
						<option value="">Select</option>
					</select>
				</div>
				<div class="col-lg-3 mb-lg-0 mb-6">
					<label>Type:</label>
					<select class="form-control datatable-input" data-col-index="7">
						<option value="">Select</option>
						<option value="">Select</option>
						<option value="">Select</option>
						<option value="">Select</option>
					</select>
				</div>
			</div>
			<div class="row mt-8">
				<div class="col-lg-12">
				<button class="btn btn-primary btn-primary--icon" id="kt_search">
					<span>
						<i class="la la-search"></i>
						<span>Search</span>
					</span>
				</button>&#160;&#160;
				<button class="btn btn-secondary btn-secondary--icon" id="kt_reset">
					<span>
						<i class="la la-close"></i>
						<span>Reset</span>
					</span>
				</button></div>
			</div>
		</form>
		<!--begin: Datatable-->
		<!--begin: Datatable-->
		<table class="table table-bordered table-hover table-checkable" id="kt_datatable">
			<thead>
				<tr>
					<th>번호</th>
					<th>제출자</th>
					<th>제목</th>
					<th>결재 구분</th>
					<th>제출일</th>
					<th>완료일</th>
					<th>진행상황</th>
				</tr>
			</thead>
		<%-- 	<tbody>
        <c:set var="num" value="${listcount-(nowpage-1)*limit}"/>
        <c:forEach var="b" items="${apprlist}">
        <tr>
           <td>번호
              <c:out value="${num}"/>num 출력
              <c:set var="num" value="${num-1}"/> num = num-1; 의미
           </td>
           <td>제목
              <div>
                  <a href="./ApprDetailAction.bo?num=${b.APPR_CODE}">
                     ${b.APPR_TITLE}
                  </a>
              </div>
              </td>
              <td><div>${b.M_CODE}</div></td>
              <td><div>${b.APPR_DATE}</div></td>              
              <td><div>${b.APPR_COMP_DATE}</div></td>
           </tr>
           </c:forEach>
       </tbody> --%>
		</table>
		
		
		
		<!-- pagination 시작 -->
		<div class="d-flex flex-wrap py-2">
			<div class="pagination" style="margin:0 auto;">
	        </div>
	    </div>
		<!-- pagination 끝 -->
		<div class="modal" id="myModal">
		<div class="modal-content">
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
									<input type="file" id="upfile" name="uploadfile"> <span
										id="filevalue"></span>
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
							<button type="reset" class="btn btn-outline-secondary">취소</button>
						</div>
					</div>
				</div>
			</form>
			<!--end::Form-->
		</div>
		<!--end::Card-->
		</div>
		</div>
		<!--end: Datatable-->
	</div>
</div>
</div>
</div><!--end::Demo Panel-->
		<script>var HOST_URL = "https://keenthemes.com/metronic/tools/preview";</script>
		<!--begin::Global Config(global config for global JS scripts)-->
		<script>var KTAppSettings = { "breakpoints": { "sm": 576, "md": 768, "lg": 992, "xl": 1200, "xxl": 1200 }, "colors": { "theme": { "base": { "white": "#ffffff", "primary": "#3699FF", "secondary": "#E5EAEE", "success": "#1BC5BD", "info": "#8950FC", "warning": "#FFA800", "danger": "#F64E60", "light": "#F3F6F9", "dark": "#212121" }, "light": { "white": "#ffffff", "primary": "#E1F0FF", "secondary": "#ECF0F3", "success": "#C9F7F5", "info": "#EEE5FF", "warning": "#FFF4DE", "danger": "#FFE2E5", "light": "#F3F6F9", "dark": "#D6D6E0" }, "inverse": { "white": "#ffffff", "primary": "#ffffff", "secondary": "#212121", "success": "#ffffff", "info": "#ffffff", "warning": "#ffffff", "danger": "#ffffff", "light": "#464E5F", "dark": "#ffffff" } }, "gray": { "gray-100": "#F3F6F9", "gray-200": "#ECF0F3", "gray-300": "#E5EAEE", "gray-400": "#D6D6E0", "gray-500": "#B5B5C3", "gray-600": "#80808F", "gray-700": "#464E5F", "gray-800": "#1B283F", "gray-900": "#212121" } }, "font-family": "Poppins" };</script>
		<!--end::Global Config-->
		<!--begin::Global Theme Bundle(used by all pages)-->
		<script src="resources/assets/plugins/global/plugins.bundle.js?v=7.0.4"></script>
		<script src="resources/assets/plugins/custom/prismjs/prismjs.bundle.js?v=7.0.4"></script>
		<script src="resources/assets/js/scripts.bundle.js?v=7.0.4"></script>
		<!--end::Global Theme Bundle-->
		<!--begin::Page Scripts(used by this page)-->
		<script src="resources/assets/js/pages/crud/forms/widgets/bootstrap-datepicker.js?v=7.0.4"></script>
		<!--end::Page Scripts-->
