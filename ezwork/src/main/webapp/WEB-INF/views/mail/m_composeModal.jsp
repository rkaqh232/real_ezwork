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
							<input type="text" name="MAIL_SENDER" id="SENDER" value="${M_CODE}" style="display:none"/>
							<input type="text" name="M_FILE" id="MFILE" value="${M_FILE}" style="display:none"/>
								<div class="text-dark-50 w-25px">To:</div>
								<div class="d-flex align-items-center flex-grow-1">
									<input type="text" class="form-control border-0" name="MAIL_RECIPIENT" id="MAIL_RECIPIENT_ID" value="${m.m_CODE}" required/>
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
							<!--end::Actions-->
							
							<!--begin::Toolbar-->
							<div class="d-flex align-items-center">
							<button style="border:none;background:transparent;" type="reset">
								<span class="svg-icon svg-icon-primary svg-icon-2x" data-inbox="dismiss" data-toggle="tooltip" title="다시 작성">
									<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
									    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
									        <rect x="0" y="0" width="24" height="24"/>
									        <path d="M21.4451171,17.7910156 C21.4451171,16.9707031 21.6208984,13.7333984 19.0671874,11.1650391 C17.3484374,9.43652344 14.7761718,9.13671875 11.6999999,9 L11.6999999,4.69307548 C11.6999999,4.27886191 11.3642135,3.94307548 10.9499999,3.94307548 C10.7636897,3.94307548 10.584049,4.01242035 10.4460626,4.13760526 L3.30599678,10.6152626 C2.99921905,10.8935795 2.976147,11.3678924 3.2544639,11.6746702 C3.26907199,11.6907721 3.28437331,11.7062312 3.30032452,11.7210037 L10.4403903,18.333467 C10.7442966,18.6149166 11.2188212,18.596712 11.5002708,18.2928057 C11.628669,18.1541628 11.6999999,17.9721616 11.6999999,17.7831961 L11.6999999,13.5 C13.6531249,13.5537109 15.0443703,13.6779456 16.3083984,14.0800781 C18.1284272,14.6590944 19.5349747,16.3018455 20.5280411,19.0083314 L20.5280247,19.0083374 C20.6363903,19.3036749 20.9175496,19.5 21.2321404,19.5 L21.4499999,19.5 C21.4499999,19.0068359 21.4451171,18.2255859 21.4451171,17.7910156 Z" fill="#000000" fill-rule="nonzero"/>
									    </g>
									</svg><!--end::Svg Icon-->
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