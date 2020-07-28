<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="resources/js/jquery-3.5.0.js"></script>
<script>
$(function(){
	$("#upfile").change(function(){
		var inputfile = $(this).val().split('\\');
		$("#filevalue").text(inputfile[inputfile.length-1]);
	})
})
</script>
<div class="container">
<div class="card card-custom">
<!--begin::Header-->
<div class="card-header align-items-center flex-wrap justify-content-between py-5 h-auto">
	<!--begin::Left-->
	<div class="d-flex align-items-center my-2">
		<a href="javascript:history.back()" class="btn btn-clean btn-icon btn-sm mr-6" data-inbox="back">
			<i class="flaticon2-left-arrow-1"></i>
		</a>
		<button data-toggle="modal" data-target="#myModal" style="border:none;background:transparent">
		<span class="btn btn-default btn-icon btn-sm mr-2" data-toggle="tooltip" title="삭제">
			<span class="svg-icon svg-icon-md">
				<!--begin::Svg Icon | path:assets/media/svg/icons/General/Trash.svg-->
				<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
					<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
						<rect x="0" y="0" width="24" height="24" />
						<path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero" />
						<path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3" />
					</g>
				</svg>
				<!--end::Svg Icon-->
			</span>
		</span></button>
		
		<!-- 삭제 모달 -->
		<div class="modal" id="myModal">
		  <div class="modal-dialog">
		    <div class="modal-content">
		     <!-- Modal body -->
		      <div class="modal-body">
		        <form name="deleteForm" action="TempDelete.mail" method="post">
		          <%-- http://localhost:8088/Board_Ajax_bootstrap/BoardDetailAction.bo?num
		          	     주소를 보면 num을 파라미터로 넘기고 있다. 
		          	     이 값을 가져와서 ${param.num}을 사용 또는 ${boarddata.BOARD_NUM}
		          --%>
		          <input type="hidden" name="num" value="${param.num}" id="mail_num">
		          <div class="modal-body" style="text-align:center">
		          <h4>메일을 영구 삭제하시겠습니까?</h4></div>
		          <div style="margin:0 auto;width:25%">
		          <button type="submit" class="btn btn-light-primary font-weight-bold" >삭제</button>
		          <button type="button" class="btn btn-primary font-weight-bold" data-dismiss="modal">취소</button>
		          </div>
		        </form>
		      </div>
		    </div>
		  </div>
		</div>
	</div>
	<!--end::Left-->
	<!--begin::Right-->
	<div class="d-flex align-items-center justify-content-end text-right my-2">
		<span class="btn btn-default btn-icon btn-sm mr-2" data-toggle="tooltip" title="이전 메일">
			<i class="ki ki-bold-arrow-back icon-sm"></i>
		</span>
		<span class="btn btn-default btn-icon btn-sm mr-2" data-toggle="tooltip" title="다음 메일">
			<i class="ki ki-bold-arrow-next icon-sm"></i>
		</span>
		
	</div>
	<!--end::Right-->
</div>
<!--end::Header-->
	<!--begin::Reply-->
	<div class="card-spacer mb-3" id="kt_inbox_reply">
		<div class="card card-custom shadow-sm">
			<div class="card-body p-0">
				<!--begin::Form-->
				<form id="kt_inbox_reply_form" name="mailform" action="TempAddaction.mail" enctype="multipart/form-data" method="post">
					<!--begin::Body-->
					<div class="d-block">
						<!--begin::To-->
						<div class="d-flex align-items-center border-bottom inbox-to px-8 min-h-50px">
						<input type="hidden" name="num" value="${param.num}" id="mail_num">
						<input type="text" name="MAIL_SENDER" id="SENDER" value="${M_CODE}" style="display:none"/><!-- 수정 -->
						<input type="text" name="M_FILE" id="MFILE" value="${M_FILE}" style="display:none"/>
							<div class="text-dark-50 w-25px">To:</div>
							<div class="d-flex align-items-center flex-grow-1">
								<input type="text" class="form-control border-0" name="MAIL_RECIPIENT" value="${maildata.MAIL_RECIPIENT}" />
							</div>
						</div>
						<!--end::To-->
						<!--begin::CC-->
						<div class="d-none align-items-center border-bottom inbox-to-cc pl-8 pr-5 min-h-50px">
							<div class="text-dark-50 w-75px">Cc:</div>
							<div class="flex-grow-1">
								<input type="text" class="form-control border-0" name="compose_cc" value="" />
							</div>
							<span class="btn btn-clean btn-xs btn-icon" data-inbox="cc-hide">
								<i class="la la-close"></i>
							</span>
						</div>
						<!--end::CC-->
						<!--begin::Subject-->
						<div class="border-bottom">
							<input class="form-control border-0 px-8 min-h-45px" name="MAIL_SUBJECT" value="${maildata.MAIL_SUBJECT}" />
						</div>
						<!--end::Subject-->
						<!--begin::Message-->
						<div id="kt_inbox_reply_editor" class="border-0" style="height: 250px">
						<textarea name="MAIL_CONTENT" id="MAIL_CONTENT" cols="67" rows="12" class="form-control" style="border:none; padding:30px" required>${maildata.MAIL_CONTENT}</textarea>
						</div>
						<!--end::Message-->
						<!--begin::Attachments-->
						<div class="dropzone dropzone-multi px-8 py-4" id="kt_inbox_reply_attachments">
							<div class="dropzone-items">
								<div class="dropzone-item" style="display:none">
									<div class="dropzone-file">
										<div class="dropzone-filename" title="some_image_file_name.jpg">
											<span data-dz-name="">some_image_file_name.jpg</span>
											<strong>(
											<span data-dz-size="">340kb</span>)</strong>
										</div>
										<div class="dropzone-error" data-dz-errormessage=""></div>
									</div>
									<div class="dropzone-progress">
										<div class="progress">
											<div class="progress-bar bg-primary" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0" data-dz-uploadprogress=""></div>
										</div>
									</div>
									<div class="dropzone-toolbar">
										<span class="dropzone-delete" data-dz-remove="">
											<i class="flaticon2-cross"></i>
										</span>
									</div>
								</div>
							</div>
						</div>
						<!--end::Attachments-->
					</div>
					<!--end::Body-->
					<!--begin::Footer-->
					<div class="d-flex align-items-center justify-content-between py-5 pl-8 pr-5 border-top">
						<!--begin::Actions-->
						<div class="d-flex align-items-center mr-3">
							<!--begin::Send-->
							<div class="btn-group mr-4">
								<button class="btn btn-info font-weight-bold px-6" type="submit" id="submit">보내기</button>
							</div>
							<!--end::Send-->
							
							<!--begin::파일 첨부-->
							<label for="upfile" style="margin-bottom:0;cursor:pointer">
							<span class="svg-icon svg-icon-primary svg-icon-2x">
							<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
							    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
							        <rect x="0" y="0" width="24" height="24"/>
							        <path d="M14,16 L12,16 L12,12.5 C12,11.6715729 11.3284271,11 10.5,11 C9.67157288,11 9,11.6715729 9,12.5 L9,17.5 C9,19.4329966 10.5670034,21 12.5,21 C14.4329966,21 16,19.4329966 16,17.5 L16,7.5 C16,5.56700338 14.4329966,4 12.5,4 L12,4 C10.3431458,4 9,5.34314575 9,7 L7,7 C7,4.23857625 9.23857625,2 12,2 L12.5,2 C15.5375661,2 18,4.46243388 18,7.5 L18,17.5 C18,20.5375661 15.5375661,23 12.5,23 C9.46243388,23 7,20.5375661 7,17.5 L7,12.5 C7,10.5670034 8.56700338,9 10.5,9 C12.4329966,9 14,10.5670034 14,12.5 L14,16 Z" fill="#000000" fill-rule="nonzero" transform="translate(12.500000, 12.500000) rotate(-315.000000) translate(-12.500000, -12.500000) "/>
							    </g>
							</svg>
							<input type="file" id="upfile" name="uploadfile" style="display:none">
							<span id="filevalue"></span>
							</span></label>
							<!--end::파일 첨부-->

						</div>
						</form>
						<!--end::Form-->
						
						<!--end::Actions-->
						
					</div>
					<!--end::Footer-->
			</div>
		</div>
	</div>
	<!--end::Reply-->
</div>
</div>