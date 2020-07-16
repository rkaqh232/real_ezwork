<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--begin::Compose-->
		<div class="modal modal-sticky modal-sticky-lg modal-sticky-bottom-right" id="kt_inbox_compose" role="dialog" data-backdrop="false">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<!--begin::Form-->
					<form id="kt_inbox_compose_form" name="mailform" action="MailAddaction.mail" enctype="multipart/form-data" method="post">
						<!--begin::Header-->
						<div class="d-flex align-items-center justify-content-between py-5 pl-8 pr-5 border-bottom">
							<h5 class="font-weight-bold m-0">메일 쓰기</h5>
							<div class="d-flex ml-2">
								<span class="btn btn-clean btn-sm btn-icon mr-2">
									<i class="flaticon2-arrow-1 icon-1x"></i>
								</span>
								<span class="btn btn-clean btn-sm btn-icon" data-dismiss="modal">
									<i class="ki ki-close icon-1x"></i>
								</span>
							</div>
						</div>
						<!--end::Header-->
						<!--begin::Body-->
						<div class="d-block">
							<!--begin::To-->
							<div class="d-flex align-items-center border-bottom inbox-to px-8 min-h-45px">
							<input type="text" name="MAIL_SENDER" id="SENDER" value="${id}" style="display:none"/>
								<div class="text-dark-50 w-25px">To:</div>
								<div class="d-flex align-items-center flex-grow-1">
									<input type="text" class="form-control border-0" name="MAIL_RECIPIENT" required/>
								</div>
							</div>
							<!--end::To-->
							<!--begin::Subject-->
							<div class="border-bottom">
								<input class="form-control border-0 px-8 min-h-45px" name="MAIL_SUBJECT" placeholder="제목" required/>
							</div>
							<!--end::Subject-->
							<!--begin::Message-->
							<div id="kt_inbox_compose_editor" class="border-0" style="height: 250px">
							<textarea name="MAIL_CONTENT" id="board_content" cols="67" rows="13" class="form-control" style="border:none" required></textarea>
							</div>
							<!--end::Message-->
							<!--begin::Attachments-->
							<div class="dropzone dropzone-multi px-8 py-4" id="kt_inbox_compose_attachments">
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
									<span class="btn btn-info font-weight-bold dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" role="button"></span>
									<div class="dropdown-menu dropdown-menu-sm dropup p-0 m-0 dropdown-menu-right">
										<ul class="navi py-3">
											<li class="navi-item">	
											<a href="#" class="navi-link">
											<button style="border:none;background:white;" type="submit" formaction="Tempaction.mail">
												<span class="navi-icon">
													<i class="flaticon2-medical-records"></i>
												</span>
												<span class="navi-text">임시 보관</span>
											</button>
											</a>
											</li>
										</ul>
									</div>
								</div>
								<!--end::Send-->
								<!--begin::Other-->
								<label for="upfile">
								<span class="btn btn-icon btn-sm btn-clean mr-2" id="kt_inbox_compose_attachments_select">
								<i class="flaticon2-clip-symbol">
								<input type="file" id="upfile" name="uploadfile" style="display:none">
								<span id="filevalue"></span>
								</i>
								</span></label>
								<!--end::Other-->
							</div>
							<!--end::Actions-->
							<!--begin::Toolbar-->
							<div class="d-flex align-items-center">
							<button style="border:none;background:transparent;" type="reset">
								<span class="btn btn-icon btn-sm btn-clean" data-inbox="dismiss" data-toggle="tooltip" title="삭제">
									<i class="flaticon2-rubbish-bin-delete-button"></i>
								</span>
							</button>
							</div>
							<!--end::Toolbar-->
						</div>
						<!--end::Footer-->
					</form>
					<!--end::Form-->
				</div>
			</div>
		</div>
		<!--end::Compose-->