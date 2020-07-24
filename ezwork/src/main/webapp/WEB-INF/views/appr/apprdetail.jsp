<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="resources/js/jquery-3.5.0.js"></script>

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
    width: 850px;
    position: relative;
    top: -500px;
    left: 15%;	
}
.appr{
	margin-bottom:1rem;
}

.fileup, .writer{
	line-height:37px;
}
.filelabel{
	width:60%;
	left:12;
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
			</span>의견 </button>
			<!--end::Button-->
		</div>
	</div>
	
		
		
		<!--begin::Card-->
		<div class="card card-custom">
			<div class="card-header">
				<div class="card-title">
					<i class="flaticon2-chat-1 text-info"></i>
					<h3 class="card-label">&nbsp;글 등록</h3>
					<small>전자 결재</small>
				</div>
			</div>
			<!--begin::Form-->
				<div class="card-body">
					<div class="form-group row appr">
						<label class="col-lg-3 col-form-label text-lg-right">업무 구분</label>
						<div class="col-lg-2">
							<div class="rows">
								<c:if test="${apprdata.APPR_STAT==0}" >
									<c:set var="stat" value="업무" />	 
								</c:if>
								<c:if test="${apprdata.APPR_STAT==1}" >
									<c:set var="stat" value="휴가" />	 
								</c:if>
																
								<input type="text" value="${stat}" class="form-control" readOnly>
																
							</div>
						</div>
					</div>
					<input type="hidden" value="${part}" name="M_PART">
					<input type="hidden" value="${code}" name="M_CODE">
					<div class="form-group row appr">
						<label class="col-lg-3 col-form-label text-lg-right">제출자</label>
						<div class="col-lg-4 writer">
							<!-- <input name="EV_NAME" id="board_name" value="인사팀" readOnly
								type="text" size="10" maxlength="30" class="form-control"> -->
							<span class="label label-lg font-weight-bold label-light-info label-inline">
								${part}
							</span>
							<span>
							${name}
							</span>
						</div>
					</div>

					<div class="form-group row appr">
						<label class="col-lg-3 col-form-label text-lg-right">제목</label>
						<div class="col-lg-7">
							<input name="APPR_TITLE" id="appr_title" type="text"
								size="50" maxlength="100" class="form-control"
								value="${apprdata.APPR_TITLE}" readOnly>
						</div>
					</div>
					<div class="form-group row appr">
						<label class="col-lg-3 col-form-label text-lg-right">내용</label>
						<div class="col-lg-7">
							<textarea name ="APPR_CONTENT" style="height: 160px" class="form-control" 
							rows="3" readOnly>${apprdata.APPR_CONTENT}</textarea>
						</div>
					</div>

					<div class="form-group row appr fileup">
						<label class="col-lg-3 col-form-label text-lg-right">파일첨부</label>
						<div class="col-lg-9">
							<div class="dropzone dropzone-multi" id="kt_dropzone_4">
								<div class="dropzone-panel mb-lg-0 mb-2">
								<c:if test="${!empty apprdata.APPR_FILE }" >
									<input type="text" id="downfile" name="uploadfile" class="custom-file-input"
									 		value="${apprdata.APPR_ORIGIN}" 
									 		onclick="location='ApprFileDown.appr?filename=${apprdata.APPR_FILE}&original=${apprdata.APPR_ORIGIN}'" readOnly>
									 <label class="custom-file-label filelabel" for="downfile">${apprdata.APPR_ORIGIN}</label>
								</c:if>
								<c:if test="${empty apprdata.APPR_FILE }" >
									<input type="text" id="downfile" name="uploadfile" class="custom-file-input"
									 		value="파일 없음" readOnly>
									 <label class="custom-file-label filelabel" for="downfile">파일 없음</label>
								</c:if>
								</div>
								<div class="dropzone-items"></div>
							</div>
						</div>
					</div>

					<div class="form-group row appr">
						<label class="col-lg-3 col-form-label text-lg-right">1차 결재자</label>
						<div class="col-lg-4">
							<input type="text" name = "FIRST_CODE" list="fmemlist" 
									class="form-control fmem" autocomplete=off>
								<datalist id="fmemlist">
								<c:forEach var="m" items="${memberlist}">
									<option value="${m.m_PART_C} ${m.m_NAME}"></option>
								</c:forEach>
								</datalist>			
						</div>
					</div>
					<div class="form-group row appr">
						<label class="col-lg-3 col-form-label text-lg-right">2차 결재자</label>
						<div class="col-lg-4">
							<input type="text" name = "SECOND_CODE" list="smemlist" 
									class="form-control smem" autocomplete=off>
								<datalist id="smemlist">
									<c:forEach var="m" items="${memberlist}">
									<option value="${m.m_PART_C} ${m.m_NAME}"></option>
								</c:forEach>
								</datalist>			
						</div>
					</div>
					<div class="form-group row appr">
						<label class="col-lg-3 col-form-label text-lg-right">3차 결재자</label>
						<div class="col-lg-4">
							<input type="text" name = "THIRD_CODE" list="tmemlist" 
									class="form-control tmem" autocomplete=off>
								<datalist id="tmemlist">
									<c:forEach var="m" items="${memberlist}">
									<option value="${m.m_PART_C} ${m.m_NAME}"></option>
								</c:forEach>
								</datalist>			
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
			<!--end::Form-->
		</div>
		<!--end::Card-->
		</div>
		</div>		
		<!--end: Datatable-->
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
