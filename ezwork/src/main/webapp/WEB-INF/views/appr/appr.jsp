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
/* .modal {
	display: none;
    width: 850px;
    position: relative;
    top: -500px;
    left: 15%;	
} */
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
			</span>결재 작성</button>
			<!--end::Button-->
		<div class="modal fade" id="myModal" tabindex="-1"
	role="dialog" aria-labelledby="staticBackdrop" aria-hidden="true">
	<div class="modal-dialog modal-xl" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h3 class="modal-title" id="exampleModalLabel"
					style="font-weight: bold;">결재 제출</h3>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<i aria-hidden="true" class="ki ki-close"></i>
				</button>
			</div>
			<div class="card card-custom">
				<!--begin::Form-->
				<form action="Apprinsert.appr" method="post" name="appr"
				enctype="multipart/form-data">
				<div class="card-body">
					<div class="form-group row appr">
						<label class="col-lg-3 col-form-label text-lg-right">업무 구분</label>
						<div class="col-lg-2">
							<div class="rows">
								<select name="APPR_STAT" class="form-control" id="viewcount">
									<option value="0" selected>업무</option>
									<option value="1">휴가</option>
									<option value="2">업무2</option>
								</select>
							</div>
						</div>
					</div>
					<input type="hidden" value="${part}" name="M_PART"> <input
						type="hidden" value="${code}" name="M_CODE"> <input
						type="hidden" value="${name}" name="APPR_NAME">
					<div class="form-group row appr">
						<label class="col-lg-3 col-form-label text-lg-right">제출자</label>
						<div class="col-lg-4 writer">
							<!-- <input name="EV_NAME" id="board_name" value="인사팀" readOnly
								type="text" size="10" maxlength="30" class="form-control"> -->
							<span
								class="label label-lg font-weight-bold label-light-info label-inline">
								${part} </span> <span> ${name} </span>
						</div>
					</div>

					<div class="form-group row appr">
						<label class="col-lg-3 col-form-label text-lg-right">제목</label>
						<div class="col-lg-7">
							<input name="APPR_TITLE" id="appr_title" type="text" size="50"
								maxlength="100" class="form-control" placeholder="제목을 입력하세요">
						</div>
					</div>
					<div class="form-group row appr">
						<label class="col-lg-3 col-form-label text-lg-right">내용</label>
						<div class="col-lg-7">
							<textarea name="APPR_CONTENT" style="height: 160px"
								class="form-control" rows="3" placeholder="내용을 입력하세요"></textarea>
						</div>
					</div>

					<div class="form-group row appr fileup">
						<label class="col-lg-3 col-form-label text-lg-right">파일첨부</label>
						<div class="col-lg-9">
							<div class="dropzone dropzone-multi" id="kt_dropzone_4">
								<div class="dropzone-panel mb-lg-0 mb-2">
									<input type="file" id="upfile" name="uploadfile"
										class="custom-file-input"> <label
										class="custom-file-label filelabel" for="upfile">Choose
										file</label>
								</div>
								<div class="dropzone-items"></div>
							</div>
						</div>
					</div>

					<div class="form-group row appr">
						<label class="col-lg-3 col-form-label text-lg-right">1차
							결재자</label>
						<div class="col-lg-4">
							<input type="text" name="FIRST_CODE" list="fmemlist"
								class="form-control fmem" autocomplete=off>
							<datalist id="fmemlist">
								<c:forEach var="m" items="${memberlist}">
									<option value="${m.m_PART_C} ${m.m_NAME}"></option>
								</c:forEach>
							</datalist>
						</div>
					</div>
					<div class="form-group row appr">
						<label class="col-lg-3 col-form-label text-lg-right">2차
							결재자</label>
						<div class="col-lg-4">
							<input type="text" name="SECOND_CODE" list="smemlist"
								class="form-control smem" autocomplete=off>
							<datalist id="smemlist">
								<c:forEach var="m" items="${memberlist}">
									<option value="${m.m_PART_C} ${m.m_NAME}"></option>
								</c:forEach>
							</datalist>
						</div>
					</div>
					<div class="form-group row appr">
						<label class="col-lg-3 col-form-label text-lg-right">3차
							결재자</label>
						<div class="col-lg-4">
							<input type="text" name="THIRD_CODE" list="tmemlist"
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
							<button type="reset" class="btn btn-outline-secondary"
								data-dismiss="modal">취소</button>
						</div>
					</div>
				</div>
			</form>
			<!--end::Form-->
				<!-- form 끝 -->
			</div>
		</div>
	</div>
</div>
		<!--end: Datatable-->
		</div>
	</div>
	<div class="card-body">
		<!--begin: Search Form-->
		<form class="kt-form kt-form--fit mb-15" >
			<div class="row mb-6">
				<div class="col-lg-3 mb-lg-0 mb-6">
					<label>번호</label>
					<input type="text" id="search_number" class="form-control datatable-input" placeholder="결재 고유 번호" data-col-index="0" />
				</div>
				<div class="col-lg-3 mb-lg-0 mb-6">
					<label>제출자</label>
					<input type="text" id="search_name" class="form-control datatable-input" placeholder="제출자 이름" data-col-index="1" />
				</div>
				<div class="col-lg-3 mb-lg-0 mb-6">
					<label>제목 및 내용</label>
					<input type="text" id="search_contentitle" class="form-control datatable-input" placeholder="제목 및 내용" data-col-index="1" />
				</div>			
			</div>
			<div class="row mb-8">
				<div class="col-lg-3 mb-lg-0 mb-6">
					<label>기간</label>
					<div class="input-daterange input-group" id="kt_datepicker_5">
						<input type="text" class="form-control datatable-input" id="search_start" placeholder="From" data-col-index="5" />
						<div class="input-group-append">
							<span class="input-group-text">
								<i class="la la-ellipsis-h"></i>
							</span>
						</div>
						<input type="text" class="form-control datatable-input" id="search_end" placeholder="To" data-col-index="5" />
					</div>
				</div>
				<div class="col-lg-3 mb-lg-0 mb-6">
					<label>결재 구분</label>
					<select class="form-control datatable-input" id="search_appr_stat" data-col-index="6">
						<option value="" > </option>
						<option value="0">업무</option>
						<option value="1">휴가</option>
					</select>
				</div>
				<div class="col-lg-3 mb-lg-0 mb-6">
					<label>결재 상태</label>
					<select class="form-control datatable-input" id="search_appr_val" data-col-index="7">
						<option value=""> </option>
						<option value="0">승인대기</option>
						<option value="1">승인(1차)</option>
						<option value="2">승인(2차)</option>
						<option value="3">승인(최종)</option>
					</select> 
				</div>
			</div>
			<div class="row mt-8">
				<div class="col-lg-12">
				<button type="button" class="btn btn-primary btn-primary--icon" id="search_btn">
					<span>
						<i class="la la-search"></i>
						<span>Search</span>
					</span>
				</button>&#160;&#160;
				<button type="reset" class="btn btn-secondary btn-secondary--icon" id="kt_reset">
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
			<%-- <tbody>
				<c:set var="num" value="${listcount-(page-1)*limit }" />
				<c:forEach var="b" items="${boardlist}">
				<tr>
				<td>번호
				<c:out value="${num}"/>번호 출력
				<c:set var = "num" value = "${num-1 }"/> num=num-1;
				</td>
				<td>제목
					<div>
						답변글 제목앞에 여백 처리 부분 
								BOARD_RE_LEV, BOARD_NUM
								BOARD_SUBJECT, BOARD_NAME, BOARD_DATE,
								BOARD_READCOUNT :property 이름
						<c:if test="${b.BOARD_RE_LEV != 0 }"> <!-- 답글인 경우 --> 
							<c:forEach var = "a" begin="0"
										end = "${b.BOARD_RE_LEV*2 }" step="1">
							&nbsp;			
							</c:forEach>
							<img src='resources/image/line.gif'>
						</c:if>
						
						<c:if test="${b.BOARD_RE_LEV == 0 }"><!-- 원문인 경우 -->
							&nbsp;
						</c:if>
						
						<a href="./BoardDetailAction.bo?num=${b.BOARD_NUM}">
							${b.BOARD_SUBJECT}
						</a>
					</div>
					<td><div>${b.BOARD_NAME}</div></td>
					<td><div>${b.BOARD_DATE}</div></td>
					<td><div>${b.BOARD_READCOUNT}</div></td>
					</tr>	
				</c:forEach>
			</tbody>	
		 --%>
		
		
		</table>
		
		
		
		<!-- pagination 시작 -->
		<div class="d-flex flex-wrap py-2">
			<div class="pagination" style="margin:0 auto;">
	        </div>
	    </div>
		<!-- pagination 끝 -->
		
		
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
