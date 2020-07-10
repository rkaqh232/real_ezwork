<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="resources/js/jquery-3.5.0.js"></script>
<script>
function reply(){
	document.getElementById("kt_inbox_reply").style.display="block";
}
function hideRe(){
	document.getElementById("kt_inbox_reply").style.display="none";
	
}
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
		
		<span class="btn btn-default btn-icon btn-sm mr-2" data-toggle="tooltip" title="Delete">
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
		</span>
		
	</div>
	<!--end::Left-->
	<!--begin::Right-->
	<div class="d-flex align-items-center justify-content-end text-right my-2">
		<span class="text-muted font-weight-bold mr-4" data-toggle="dropdown">1 - 50 of 235</span>
		<span class="btn btn-default btn-icon btn-sm mr-2" data-toggle="tooltip" title="Previose message">
			<i class="ki ki-bold-arrow-back icon-sm"></i>
		</span>
		<span class="btn btn-default btn-icon btn-sm mr-2" data-toggle="tooltip" title="Next message">
			<i class="ki ki-bold-arrow-next icon-sm"></i>
		</span>
		<div class="dropdown" data-toggle="tooltip" title="Settings">
			<span class="btn btn-default btn-icon btn-sm" data-toggle="dropdown">
				<i class="ki ki-bold-more-hor icon-1x"></i>
			</span>
			<div class="dropdown-menu dropdown-menu-right p-0 m-0 dropdown-menu-md">
				<!--begin::Navigation-->
				<ul class="navi navi-hover py-5">
					<li class="navi-item">
						<a href="#" class="navi-link">
							<span class="navi-icon">
								<i class="flaticon2-drop"></i>
							</span>
							<span class="navi-text">New Group</span>
						</a>
					</li>
					<li class="navi-item">
						<a href="#" class="navi-link">
							<span class="navi-icon">
								<i class="flaticon2-list-3"></i>
							</span>
							<span class="navi-text">Contacts</span>
						</a>
					</li>
					<li class="navi-item">
						<a href="#" class="navi-link">
							<span class="navi-icon">
								<i class="flaticon2-rocket-1"></i>
							</span>
							<span class="navi-text">Groups</span>
							<span class="navi-link-badge">
								<span class="label label-light-primary label-inline font-weight-bold">new</span>
							</span>
						</a>
					</li>
					<li class="navi-item">
						<a href="#" class="navi-link">
							<span class="navi-icon">
								<i class="flaticon2-bell-2"></i>
							</span>
							<span class="navi-text">Calls</span>
						</a>
					</li>
					<li class="navi-item">
						<a href="#" class="navi-link">
							<span class="navi-icon">
								<i class="flaticon2-gear"></i>
							</span>
							<span class="navi-text">Settings</span>
						</a>
					</li>
					<li class="navi-separator my-3"></li>
					<li class="navi-item">
						<a href="#" class="navi-link">
							<span class="navi-icon">
								<i class="flaticon2-magnifier-tool"></i>
							</span>
							<span class="navi-text">Help</span>
						</a>
					</li>
					<li class="navi-item">
						<a href="#" class="navi-link">
							<span class="navi-icon">
								<i class="flaticon2-bell-2"></i>
							</span>
							<span class="navi-text">Privacy</span>
							<span class="navi-link-badge">
								<span class="label label-light-danger label-rounded font-weight-bold">5</span>
							</span>
						</a>
					</li>
				</ul>
				<!--end::Navigation-->
			</div>
		</div>
	</div>
	<!--end::Right-->
</div>
<!--end::Header-->
<!--begin::Body-->
<div class="card-body p-0">
	<!--begin::Header-->
	<div class="d-flex align-items-center justify-content-between flex-wrap card-spacer-x py-5">
		<!--begin::Title-->
		<div class="d-flex align-items-center mr-2 py-2">
			<div class="font-weight-bold font-size-h3 mr-3">Trip Reminder. Thank you for flying with us!</div>
			<span class="label label-light-primary font-weight-bold label-inline mr-2">inbox</span>
			<span class="label label-light-danger font-weight-bold label-inline">important</span>
		</div>
		<!--end::Title-->
		<!--begin::Toolbar-->
		<div class="d-flex py-2">
			<span class="btn btn-default btn-sm btn-icon mr-2">
				<i class="flaticon2-sort"></i>
			</span>
		</div>
		<!--end::Toolbar-->
	</div>
	<!--end::Header-->
	<!--begin::Messages-->
	<div class="mb-3">
		<div class="cursor-pointer shadow-xs toggle-on" data-inbox="message">
			<div class="d-flex align-items-center card-spacer-x py-6">
				<span class="symbol symbol-50 mr-4">
					<span class="symbol-label" style="background-image: url('assets/media/users/100_13.jpg')"></span>
				</span>
				<div class="d-flex flex-column flex-grow-1 flex-wrap mr-2">
					<div class="d-flex">
						<a href="#" class="font-size-lg font-weight-bolder text-dark-75 text-hover-primary mr-2">Chris Muller</a>
						<div class="font-weight-bold text-muted">
						<span class="label label-success label-dot mr-2"></span>1 Day ago</div>
					</div>
					<div class="d-flex flex-column">
						<div class="toggle-off-item">
							<span class="font-weight-bold text-muted cursor-pointer" data-toggle="dropdown">to me
							<i class="flaticon2-down icon-xs ml-1 text-dark-50"></i></span>
							<div class="dropdown-menu dropdown-menu-lg dropdown-menu-left p-5">
								<table>
									<tr>
										<td class="text-muted min-w-75px py-2">From</td>
										<td>Mark Andre</td>
									</tr>
									<tr>
										<td class="text-muted py-2">Date:</td>
										<td>Jul 30, 2019, 11:27 PM</td>
									</tr>
									<tr>
										<td class="text-muted py-2">Subject:</td>
										<td>Trip Reminder. Thank you for flying with us!</td>
									</tr>
									<tr>
										<td class="text-muted py-2">Reply to:</td>
										<td>mark.andre@gmail.com</td>
									</tr>
								</table>
							</div>
						</div>
						<div class="text-muted font-weight-bold toggle-on-item" data-inbox="toggle">With resrpect, i must disagree with Mr.Zinsser. We all know the most part of important part....</div>
					</div>
				</div>
				<div class="d-flex align-items-center">
					<div class="font-weight-bold text-muted mr-2">Jul 15, 2019, 11:19AM</div>
					<div class="d-flex align-items-center" data-inbox="toolbar">
						<span class="btn btn-clean btn-sm btn-icon mr-2" data-toggle="tooltip" data-placement="top" title="Star">
							<i class="flaticon-star icon-1x"></i>
						</span>
						<span class="btn btn-clean btn-sm btn-icon mr-2" data-toggle="tooltip" data-placement="top" title="Mark as important">
							<i class="flaticon-add-label-button icon-1x"></i>
						</span>
						<span class="btn btn-clean btn-sm btn-icon mr-2" data-toggle="tooltip" data-placement="top" title="답장하기">
							<button onclick="reply()" style="border:none;background:transparent"><i class="flaticon2-reply-1 icon-1x"></i></button>
						</span>
						<span class="btn btn-clean btn-sm btn-icon" data-toggle="tooltip" data-placement="top" title="Settings">
							<i class="flaticon-more icon-1x"></i>
						</span>
					</div>
				</div>
			</div>
			<div class="card-spacer-x py-3 toggle-off-item">
				<p>Hi Bob,</p>
				<p>LOL</p>
			</div>
		</div>
	</div>
	<!--end::Messages-->
	
	<!--begin::Reply-->
	<div class="card-spacer mb-3" id="kt_inbox_reply" style="display:none">
		<div class="card card-custom shadow-sm">
			<div class="card-body p-0">
				<!--begin::Form-->
				<form id="kt_inbox_reply_form">
					<!--begin::Body-->
					<div class="d-block">
						<!--begin::To-->
						<div class="d-flex align-items-center border-bottom inbox-to px-8 min-h-50px">
							<div class="text-dark-50 w-75px">To:</div>
							<div class="d-flex align-items-center flex-grow-1">
								<input type="text" class="form-control border-0" name="compose_to" value="Chris Muller, Lina Nilson" />
							</div>
							<div class="ml-2">
								<span class="text-muted font-weight-bold cursor-pointer text-hover-primary mr-2" data-inbox="cc-show">Cc</span>
								
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
							<input class="form-control border-0 px-8 min-h-45px" name="compose_subject" placeholder="Subject" />
						</div>
						<!--end::Subject-->
						<!--begin::Message-->
						<div id="kt_inbox_reply_editor" class="border-0" style="height: 250px"></div>
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
								<span class="btn btn-primary font-weight-bold px-6">Send</span>
								<span class="btn btn-primary font-weight-bold dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" role="button"></span>
								<div class="dropdown-menu dropdown-menu-sm dropup p-0 m-0 dropdown-menu-right">
									<ul class="navi py-3">
										<li class="navi-item">
											<a href="#" class="navi-link">
												<span class="navi-icon">
													<i class="flaticon2-writing"></i>
												</span>
												<span class="navi-text">Schedule Send</span>
											</a>
										</li>
										<li class="navi-item">
											<a href="#" class="navi-link">
												<span class="navi-icon">
													<i class="flaticon2-medical-records"></i>
												</span>
												<span class="navi-text">Save &amp; archive</span>
											</a>
										</li>
										<li class="navi-item">
											<a href="#" class="navi-link">
												<span class="navi-icon">
													<i class="flaticon2-hourglass-1"></i>
												</span>
												<span class="navi-text">Cancel</span>
											</a>
										</li>
									</ul>
								</div>
							</div>
							<!--end::Send-->
							<!--begin::Other-->
							<span class="btn btn-icon btn-sm btn-clean mr-2" id="kt_inbox_reply_attachments_select">
								<i class="flaticon2-clip-symbol"></i>
							</span>
							<span class="btn btn-icon btn-sm btn-clean">
								<i class="flaticon2-pin"></i>
							</span>
							<!--end::Other-->
						</div>
						<!--end::Actions-->
						<!--begin::Toolbar-->
						<div class="d-flex align-items-center">
							<span class="btn btn-icon btn-sm btn-clean mr-2" data-toggle="tooltip" title="More actions">
								<i class="flaticon2-settings"></i>
							</span>
							<span class="btn btn-icon btn-sm btn-clean" data-inbox="dismiss" data-toggle="tooltip" title="삭제">
								<button onclick="hideRe()" style="border:none;background:transparent"><i class="flaticon2-rubbish-bin-delete-button"></i></button>
							</span>
						</div>
						<!--end::Toolbar-->
					</div>
					<!--end::Footer-->
				</form>
				<!--end::Form-->
			</div>
		</div>
	</div>
	<!--end::Reply-->
</div>
<!--end::Body-->
</div>
</div>