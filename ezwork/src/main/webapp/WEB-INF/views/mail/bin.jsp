<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--begin::Content-->
<div class="content d-flex flex-column flex-column-fluid" id="kt_content">
<!--begin::Entry-->
<div class="d-flex flex-column-fluid">
	<!--begin::Container-->
	<div class="container">
		<!--begin::Inbox-->
		<div class="d-flex flex-row">
			<!--begin::Aside-->
			<div class="flex-row-auto offcanvas-mobile w-200px w-xxl-275px" id="kt_inbox_aside">
				<!--begin::Card-->
				<div class="card card-custom card-stretch">
					<!--begin::Body-->
					<div class="card-body px-5">
						<!--begin::Compose-->
						<div class="px-4 mt-4 mb-10">
							<a href="#" class="btn btn-block btn-info font-weight-bold text-uppercase py-4 px-6 text-center" data-toggle="modal" data-target="#kt_inbox_compose">메일 쓰기</a>
						</div>
						<!--end::Compose-->
						<!--begin::Navigations-->
						<div class="navi navi-hover navi-active navi-link-rounded navi-bold navi-icon-center navi-light-icon">
							<!--begin::Item-->
							<div class="navi-item my-2">
								<a href="inbox.mail" class="navi-link">
									<span class="navi-icon mr-4">
										<span class="svg-icon svg-icon-lg">
											<!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Mail-heart.svg-->
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
												<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
													<rect x="0" y="0" width="24" height="24" />
													<path d="M6,2 L18,2 C18.5522847,2 19,2.44771525 19,3 L19,13 C19,13.5522847 18.5522847,14 18,14 L6,14 C5.44771525,14 5,13.5522847 5,13 L5,3 C5,2.44771525 5.44771525,2 6,2 Z M13.8,4 C13.1562,4 12.4033,4.72985286 12,5.2 C11.5967,4.72985286 10.8438,4 10.2,4 C9.0604,4 8.4,4.88887193 8.4,6.02016349 C8.4,7.27338783 9.6,8.6 12,10 C14.4,8.6 15.6,7.3 15.6,6.1 C15.6,4.96870845 14.9396,4 13.8,4 Z" fill="#000000" opacity="0.3" />
													<path d="M3.79274528,6.57253826 L12,12.5 L20.2072547,6.57253826 C20.4311176,6.4108595 20.7436609,6.46126971 20.9053396,6.68513259 C20.9668779,6.77033951 21,6.87277228 21,6.97787787 L21,17 C21,18.1045695 20.1045695,19 19,19 L5,19 C3.8954305,19 3,18.1045695 3,17 L3,6.97787787 C3,6.70173549 3.22385763,6.47787787 3.5,6.47787787 C3.60510559,6.47787787 3.70753836,6.51099993 3.79274528,6.57253826 Z" fill="#000000" />
												</g>
											</svg>
											<!--end::Svg Icon-->
										</span>
									</span>
									<span class="navi-text font-weight-bolder font-size-lg">받은 메일함</span>
									<span class="navi-label">
										<span class="label label-rounded label-light-success font-weight-bolder">3</span>
									</span>
								</a>
							</div>
							<!--end::Item-->
							<!--begin::Item-->
							<div class="navi-item my-2">
								<a href="temp.mail" class="navi-link">
									<span class="navi-icon mr-4">
										<span class="svg-icon svg-icon-lg">
											<!--begin::Svg Icon | path:assets/media/svg/icons/Design/PenAndRuller.svg-->
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
												<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
													<rect x="0" y="0" width="24" height="24" />
													<path d="M3,16 L5,16 C5.55228475,16 6,15.5522847 6,15 C6,14.4477153 5.55228475,14 5,14 L3,14 L3,12 L5,12 C5.55228475,12 6,11.5522847 6,11 C6,10.4477153 5.55228475,10 5,10 L3,10 L3,8 L5,8 C5.55228475,8 6,7.55228475 6,7 C6,6.44771525 5.55228475,6 5,6 L3,6 L3,4 C3,3.44771525 3.44771525,3 4,3 L10,3 C10.5522847,3 11,3.44771525 11,4 L11,19 C11,19.5522847 10.5522847,20 10,20 L4,20 C3.44771525,20 3,19.5522847 3,19 L3,16 Z" fill="#000000" opacity="0.3" />
													<path d="M16,3 L19,3 C20.1045695,3 21,3.8954305 21,5 L21,15.2485298 C21,15.7329761 20.8241635,16.200956 20.5051534,16.565539 L17.8762883,19.5699562 C17.6944473,19.7777745 17.378566,19.7988332 17.1707477,19.6169922 C17.1540423,19.602375 17.1383289,19.5866616 17.1237117,19.5699562 L14.4948466,16.565539 C14.1758365,16.200956 14,15.7329761 14,15.2485298 L14,5 C14,3.8954305 14.8954305,3 16,3 Z" fill="#000000" />
												</g>
											</svg>
											<!--end::Svg Icon-->
										</span>
									</span>
									<span class="navi-text font-weight-bolder font-size-lg">임시 보관함</span>
									<span class="navi-label">
										<span class="label label-rounded label-light-warning font-weight-bolder">5</span>
									</span>
								</a>
							</div>
							<!--end::Item-->
							<!--begin::Item-->
							<div class="navi-item my-2">
								<a href="outbox.mail" class="navi-link">
									<span class="navi-icon mr-4">
										<span class="svg-icon svg-icon-lg">
											<!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Sending.svg-->
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
												<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
													<rect x="0" y="0" width="24" height="24" />
													<path d="M8,13.1668961 L20.4470385,11.9999863 L8,10.8330764 L8,5.77181995 C8,5.70108058 8.01501031,5.63114635 8.04403925,5.56663761 C8.15735832,5.31481744 8.45336217,5.20254012 8.70518234,5.31585919 L22.545552,11.5440255 C22.6569791,11.5941677 22.7461882,11.6833768 22.7963304,11.794804 C22.9096495,12.0466241 22.7973722,12.342628 22.545552,12.455947 L8.70518234,18.6841134 C8.64067359,18.7131423 8.57073936,18.7281526 8.5,18.7281526 C8.22385763,18.7281526 8,18.504295 8,18.2281526 L8,13.1668961 Z" fill="#000000" />
													<path d="M4,16 L5,16 C5.55228475,16 6,16.4477153 6,17 C6,17.5522847 5.55228475,18 5,18 L4,18 C3.44771525,18 3,17.5522847 3,17 C3,16.4477153 3.44771525,16 4,16 Z M1,11 L5,11 C5.55228475,11 6,11.4477153 6,12 C6,12.5522847 5.55228475,13 5,13 L1,13 C0.44771525,13 6.76353751e-17,12.5522847 0,12 C-6.76353751e-17,11.4477153 0.44771525,11 1,11 Z M4,6 L5,6 C5.55228475,6 6,6.44771525 6,7 C6,7.55228475 5.55228475,8 5,8 L4,8 C3.44771525,8 3,7.55228475 3,7 C3,6.44771525 3.44771525,6 4,6 Z" fill="#000000" opacity="0.3" />
												</g>
											</svg>
											<!--end::Svg Icon-->
										</span>
									</span>
									<span class="navi-text font-weight-bolder font-size-lg">보낸 메일함</span>
								</a>
							</div>
							<!--end::Item-->
							<!--begin::Item-->
							<div class="navi-item my-2">
								<a href="bin.mail" class="navi-link active">
									<span class="navi-icon mr-4">
										<span class="svg-icon svg-icon-lg">
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
									<span class="navi-text font-weight-bolder font-size-lg">휴지통</span>
								</a>
							</div>
							<!--end::Item-->
							<!--begin::Separator-->
							<div class="navi-item my-10"></div>
							<!--end::Separator-->
						</div>
						<!--end::Navigations-->
					</div>
					<!--end::Body-->
				</div>
				<!--end::Card-->
			</div>
			<!--end::Aside-->
			<!--begin::List-->
			<div class="flex-row-fluid ml-lg-8 d-block" id="kt_inbox_list">
				<!--begin::Card-->
				<div class="card card-custom card-stretch">
					<!--begin::Header-->
					<div class="card-header row row-marginless align-items-center flex-wrap py-5 h-auto">
						<!--begin::Toolbar-->
						<div class="col-12 col-sm-6 col-xxl-4 order-2 order-xxl-1 d-flex flex-wrap align-items-center">
							<div class="d-flex align-items-center mr-1 my-2">
								<label class="checkbox checkbox-single checkbox-primary mr-3">
									<input type="checkbox" />
									<span class="symbol-label"></span>
								</label>
								<span class="btn btn-clean btn-icon btn-sm mr-2" data-toggle="tooltip" title="Reload list">
									<a href="inbox.mail"><i class="ki ki-refresh icon-1x"></i></a>
								</span>
							</div>
							<div class="d-flex align-items-center mr-1 my-2">
								<span class="btn btn-default btn-icon btn-sm mr-2 d-none" data-toggle="tooltip" title="Spam">
									<span class="svg-icon svg-icon-md">
										<!--begin::Svg Icon | path:assets/media/svg/icons/Code/Warning-1-circle.svg-->
										<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
											<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
												<rect x="0" y="0" width="24" height="24" />
												<circle fill="#000000" opacity="0.3" cx="12" cy="12" r="10" />
												<rect fill="#000000" x="11" y="7" width="2" height="8" rx="1" />
												<rect fill="#000000" x="11" y="16" width="2" height="2" rx="1" />
											</g>
										</svg>
										<!--end::Svg Icon-->
									</span>
								</span>
								<span class="btn btn-default btn-icon btn-sm mr-2" data-toggle="tooltip" title="완전 삭제">
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
								<span class="btn btn-default btn-icon btn-sm mr-2" data-toggle="tooltip" title="보낸 편지함으로 이동">
									<span class="svg-icon svg-icon-md">
										<!--begin::Svg Icon | path:assets/media/svg/icons/General/Duplicate.svg-->
										<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
											<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
												<rect x="0" y="0" width="24" height="24" />
												<path d="M15.9956071,6 L9,6 C7.34314575,6 6,7.34314575 6,9 L6,15.9956071 C4.70185442,15.9316381 4,15.1706419 4,13.8181818 L4,6.18181818 C4,4.76751186 4.76751186,4 6.18181818,4 L13.8181818,4 C15.1706419,4 15.9316381,4.70185442 15.9956071,6 Z" fill="#000000" fill-rule="nonzero" opacity="0.3" />
												<path d="M10.1818182,8 L17.8181818,8 C19.2324881,8 20,8.76751186 20,10.1818182 L20,17.8181818 C20,19.2324881 19.2324881,20 17.8181818,20 L10.1818182,20 C8.76751186,20 8,19.2324881 8,17.8181818 L8,10.1818182 C8,8.76751186 8.76751186,8 10.1818182,8 Z" fill="#000000" />
											</g>
										</svg>
										<!--end::Svg Icon-->
									</span>
								</span>
							</div>
						</div>
						<!--end::Toolbar-->
						<!--begin::Search-->
						<div class="col-xxl-3 d-flex order-1 order-xxl-2 align-items-center justify-content-center">
							<div class="input-group input-group-lg input-group-solid my-2">
								<input type="text" class="form-control pl-4" placeholder="Search..." />
								<div class="input-group-append">
									<span class="input-group-text pr-3">
										<span class="svg-icon svg-icon-lg">
											<!--begin::Svg Icon | path:assets/media/svg/icons/General/Search.svg-->
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
												<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
													<rect x="0" y="0" width="24" height="24" />
													<path d="M14.2928932,16.7071068 C13.9023689,16.3165825 13.9023689,15.6834175 14.2928932,15.2928932 C14.6834175,14.9023689 15.3165825,14.9023689 15.7071068,15.2928932 L19.7071068,19.2928932 C20.0976311,19.6834175 20.0976311,20.3165825 19.7071068,20.7071068 C19.3165825,21.0976311 18.6834175,21.0976311 18.2928932,20.7071068 L14.2928932,16.7071068 Z" fill="#000000" fill-rule="nonzero" opacity="0.3" />
													<path d="M11,16 C13.7614237,16 16,13.7614237 16,11 C16,8.23857625 13.7614237,6 11,6 C8.23857625,6 6,8.23857625 6,11 C6,13.7614237 8.23857625,16 11,16 Z M11,18 C7.13400675,18 4,14.8659932 4,11 C4,7.13400675 7.13400675,4 11,4 C14.8659932,4 18,7.13400675 18,11 C18,14.8659932 14.8659932,18 11,18 Z" fill="#000000" fill-rule="nonzero" />
												</g>
											</svg>
											<!--end::Svg Icon-->
										</span>
									</span>
								</div>
							</div>
						</div>
						<!--end::Search-->
						
					</div>
					<!--end::Header-->
					<!--begin::Body-->
					<div class="card-body">
					<table class="table table-hover" style="text-align:center;margin-bottom:40px;">
						<thead>
							<tr>
								<th style="width:10%"><div>&nbsp;</div></th>
								<th><div><p class="text-dark-50">보낸사람</p></div></th>
								<th style="width:50%"><div><p class="text-dark-50">제목</p></div></th>
								<th><div><p class="text-dark-50">날짜</p></div></th>
							</tr>	
						   </thead>
						   
						   <!--begin::mailList-->
						   <c:if test="${listcount > 0 }">
						   <tbody>
							<c:set var="num" value="${listcount-(page-1)*limit}"/>	
							<c:forEach var="m" items="${maillist}">	
							<tr>
							  <td><%--번호 --%>
								<label class="checkbox">
					                <input type="checkbox"/>
					                <span></span>
					            </label>
							  </td>
							  <td><%--제목 --%>
							     <div>		
									<a href="#">
										${m.MAIL_SUBJECT}
									</a>
									</div>
								</td>
								<td><div>${m.MAIL_SENDER}</div></td>
								<td><div>${m.MAIL_DATE}</div></td>
							   </tr>
							  </c:forEach>
							 </tbody>	
							 </c:if>
						</table>						
						<!--end::mailList-->
					<!--end::Body-->
					
					<!-- pagination 시작 -->
					<div class="d-flex flex-wrap py-2" style="position:absolute;bottom:10px;width:100%;">
						<div class="pagination" style="margin:0 auto;">
				        </div>
				    </div>
					<!-- pagination 끝 -->
					</div>
				</div>
				<!--end::Card-->
			</div>
			<!--end::List-->
			<!--begin::View-->
			<div class="flex-row-fluid ml-lg-8 d-none" id="kt_inbox_view">
				<!--begin::Card-->
				<div class="card card-custom card-stretch">
					<!--begin::Header-->
					<div class="card-header align-items-center flex-wrap justify-content-between py-5 h-auto">
						<!--begin::Left-->
						<div class="d-flex align-items-center my-2">
							<a href="#" class="btn btn-clean btn-icon btn-sm mr-6" data-inbox="back">
								<i class="flaticon2-left-arrow-1"></i>
							</a>
							<span class="btn btn-default btn-icon btn-sm mr-2" data-toggle="tooltip" title="Archive">
								<span class="svg-icon svg-icon-md">
									<!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Mail-opened.svg-->
									<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
										<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
											<rect x="0" y="0" width="24" height="24" />
											<path d="M6,2 L18,2 C18.5522847,2 19,2.44771525 19,3 L19,12 C19,12.5522847 18.5522847,13 18,13 L6,13 C5.44771525,13 5,12.5522847 5,12 L5,3 C5,2.44771525 5.44771525,2 6,2 Z M7.5,5 C7.22385763,5 7,5.22385763 7,5.5 C7,5.77614237 7.22385763,6 7.5,6 L13.5,6 C13.7761424,6 14,5.77614237 14,5.5 C14,5.22385763 13.7761424,5 13.5,5 L7.5,5 Z M7.5,7 C7.22385763,7 7,7.22385763 7,7.5 C7,7.77614237 7.22385763,8 7.5,8 L10.5,8 C10.7761424,8 11,7.77614237 11,7.5 C11,7.22385763 10.7761424,7 10.5,7 L7.5,7 Z" fill="#000000" opacity="0.3" />
											<path d="M3.79274528,6.57253826 L12,12.5 L20.2072547,6.57253826 C20.4311176,6.4108595 20.7436609,6.46126971 20.9053396,6.68513259 C20.9668779,6.77033951 21,6.87277228 21,6.97787787 L21,17 C21,18.1045695 20.1045695,19 19,19 L5,19 C3.8954305,19 3,18.1045695 3,17 L3,6.97787787 C3,6.70173549 3.22385763,6.47787787 3.5,6.47787787 C3.60510559,6.47787787 3.70753836,6.51099993 3.79274528,6.57253826 Z" fill="#000000" />
										</g>
									</svg>
									<!--end::Svg Icon-->
								</span>
							</span>
							<span class="btn btn-default btn-icon btn-sm mr-2" data-toggle="tooltip" title="Spam">
								<span class="svg-icon svg-icon-md">
									<!--begin::Svg Icon | path:assets/media/svg/icons/Code/Warning-1-circle.svg-->
									<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
										<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
											<rect x="0" y="0" width="24" height="24" />
											<circle fill="#000000" opacity="0.3" cx="12" cy="12" r="10" />
											<rect fill="#000000" x="11" y="7" width="2" height="8" rx="1" />
											<rect fill="#000000" x="11" y="16" width="2" height="2" rx="1" />
										</g>
									</svg>
									<!--end::Svg Icon-->
								</span>
							</span>
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
							<span class="btn btn-default btn-icon btn-sm mr-2" data-toggle="tooltip" title="Move">
								<span class="svg-icon svg-icon-md">
									<!--begin::Svg Icon | path:assets/media/svg/icons/Files/Media-folder.svg-->
									<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
										<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
											<rect x="0" y="0" width="24" height="24" />
											<path d="M3.5,21 L20.5,21 C21.3284271,21 22,20.3284271 22,19.5 L22,8.5 C22,7.67157288 21.3284271,7 20.5,7 L10,7 L7.43933983,4.43933983 C7.15803526,4.15803526 6.77650439,4 6.37867966,4 L3.5,4 C2.67157288,4 2,4.67157288 2,5.5 L2,19.5 C2,20.3284271 2.67157288,21 3.5,21 Z" fill="#000000" opacity="0.3" />
											<path d="M10.782158,17.5100514 L15.1856088,14.5000448 C15.4135806,14.3442132 15.4720618,14.0330791 15.3162302,13.8051073 C15.2814587,13.7542388 15.2375842,13.7102355 15.1868178,13.6753149 L10.783367,10.6463273 C10.5558531,10.489828 10.2445489,10.5473967 10.0880496,10.7749107 C10.0307022,10.8582806 10,10.9570884 10,11.0582777 L10,17.097272 C10,17.3734143 10.2238576,17.597272 10.5,17.597272 C10.6006894,17.597272 10.699033,17.566872 10.782158,17.5100514 Z" fill="#000000" />
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
								<span class="btn btn-default btn-sm btn-icon" data-dismiss="modal">
									<i class="flaticon2-fax"></i>
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
											<span class="btn btn-clean btn-sm btn-icon mr-2" data-toggle="tooltip" data-placement="top" title="Reply">
												<i class="flaticon2-reply-1 icon-1x"></i>
											</span>
											<span class="btn btn-clean btn-sm btn-icon" data-toggle="tooltip" data-placement="top" title="Settings">
												<i class="flaticon-more icon-1x"></i>
											</span>
										</div>
									</div>
								</div>
								<div class="card-spacer-x py-3 toggle-off-item">
									<p>Hi Bob,</p>
									<p>With resrpect, i must disagree with Mr.Zinsser. We all know the most part of important part of any article is the title.Without a compelleing title, your reader won't even get to the first sentence.After the title, however, the first few sentences of your article are certainly the most important part.</p>
									<p>Jornalists call this critical, introductory section the "Lede," and when bridge properly executed, it's the that carries your reader from an headine try at attention-grabbing to the body of your blog post, if you want to get it right on of these 10 clever ways to omen your next blog posr with a bang</p>
									<p>Best regards,</p>
									<p>Jason Muller</p>
								</div>
							</div>
							<div class="cursor-pointer shadow-xs toggle-off" data-inbox="message">
								<div class="d-flex align-items-center card-spacer-x py-6">
									<span class="symbol symbol-50 mr-4" data-toggle="expand">
										<span class="symbol-label" style="background-image: url('assets/media/users/100_11.jpg')"></span>
									</span>
									<div class="d-flex flex-column flex-grow-1 flex-wrap mr-2">
										<div class="d-flex" data-toggle="expand">
											<a href="#" class="font-size-lg font-weight-bolder text-dark-75 text-hover-primary mr-2">Lina Nilson</a>
											<div class="font-weight-bold text-muted">
											<span class="label label-success label-dot mr-2"></span>2 Day ago</div>
										</div>
										<div class="d-flex flex-column">
											<div class="toggle-off-item">
												<span class="font-weight-bold text-muted cursor-pointer" data-toggle="dropdown">to me
												<i class="flaticon2-down icon-xs ml-1 text-dark-50"></i></span>
												<div class="dropdown-menu dropdown-menu-md dropdown-menu-left p-5">
													<table>
														<tr>
															<td class="text-muted w-75px py-2">From</td>
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
											<div class="text-muted font-weight-bold toggle-on-item" data-toggle="expand">Jornalists call this critical, introductory section the "Lede," and when bridge properly executed....</div>
										</div>
									</div>
									<div class="d-flex align-items-center">
										<div class="font-weight-bold text-muted mr-2" data-toggle="expand">Jul 20, 2019, 03:20PM</div>
										<div class="d-flex align-items-center">
											<span class="btn btn-clean btn-sm btn-icon mr-2" data-toggle="tooltip" data-placement="top" title="Star">
												<i class="flaticon-star icon-1x text-warning"></i>
											</span>
											<span class="btn btn-clean btn-sm btn-icon mr-2" data-toggle="tooltip" data-placement="top" title="Mark as important">
												<i class="flaticon-add-label-button icon-1x"></i>
											</span>
											<span class="btn btn-clean btn-sm btn-icon mr-2" data-toggle="tooltip" data-placement="top" title="Reply">
												<i class="flaticon2-reply-1 icon-1x"></i>
											</span>
											<span class="btn btn-clean btn-sm btn-icon" data-toggle="tooltip" data-placement="top" title="Settings">
												<i class="flaticon-more icon-1x"></i>
											</span>
										</div>
									</div>
								</div>
								<div class="card-spacer-x py-3 toggle-off-item">
									<p>Hi Bob,</p>
									<p>With resrpect, i must disagree with Mr.Zinsser. We all know the most part of important part of any article is the title.Without a compelleing title, your reader won't even get to the first sentence.After the title, however, the first few sentences of your article are certainly the most important part.</p>
									<p>Jornalists call this critical, introductory section the "Lede," and when bridge properly executed, it's the that carries your reader from an headine try at attention-grabbing to the body of your blog post, if you want to get it right on of these 10 clever ways to omen your next blog posr with a bang</p>
									<p>Best regards,</p>
									<p>Jason Muller</p>
								</div>
							</div>
							<div class="cursor-pointer shadow-xs toggle-off" data-inbox="message">
								<div class="d-flex align-items-center card-spacer-x py-6">
									<span class="symbol symbol-50 mr-4" data-toggle="expand">
										<span class="symbol-label" style="background-image: url('assets/media/users/100_14.jpg')"></span>
									</span>
									<div class="d-flex flex-column flex-grow-1 flex-wrap mr-2">
										<div class="d-flex" data-toggle="expand">
											<a href="#" class="font-size-lg font-weight-bolder text-dark-75 text-hover-primary mr-2">Sean Stone</a>
											<div class="font-weight-bold text-muted">
											<span class="label label-success label-dot mr-2"></span>1 Day ago</div>
										</div>
										<div class="d-flex flex-column">
											<div class="toggle-off-item">
												<span class="font-weight-bold text-muted cursor-pointer" data-toggle="dropdown">to me
												<i class="flaticon2-down icon-xs ml-1 text-dark-50"></i></span>
												<div class="dropdown-menu dropdown-menu-md dropdown-menu-left p-5">
													<table>
														<tr>
															<td class="text-muted w-75px py-2">From</td>
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
											<div class="text-muted font-weight-bold toggle-on-item" data-toggle="expand">With resrpect, i must disagree with Mr.Zinsser. We all know the most part of important part....</div>
										</div>
									</div>
									<div class="d-flex align-items-center">
										<div class="font-weight-bold text-muted mr-2" data-toggle="expand">Jul 15, 2019, 11:19AM</div>
										<div class="d-flex align-items-center">
											<span class="btn btn-clean btn-sm btn-icon mr-2" data-toggle="tooltip" data-placement="top" title="Star">
												<i class="flaticon-star icon-1x"></i>
											</span>
											<span class="btn btn-clean btn-sm btn-icon mr-2" data-toggle="tooltip" data-placement="top" title="Mark as important">
												<i class="flaticon-add-label-button icon-1x"></i>
											</span>
											<span class="btn btn-clean btn-sm btn-icon mr-2" data-toggle="tooltip" data-placement="top" title="Reply">
												<i class="flaticon2-reply-1 icon-1x"></i>
											</span>
											<span class="btn btn-clean btn-sm btn-icon" data-toggle="tooltip" data-placement="top" title="Settings">
												<i class="flaticon-more icon-1x"></i>
											</span>
										</div>
									</div>
								</div>
								<div class="card-spacer-x py-3 toggle-off-item">
									<p>Hi Bob,</p>
									<p>With resrpect, i must disagree with Mr.Zinsser. We all know the most part of important part of any article is the title.Without a compelleing title, your reader won't even get to the first sentence.After the title, however, the first few sentences of your article are certainly the most important part.</p>
									<p>Jornalists call this critical, introductory section the "Lede," and when bridge properly executed, it's the that carries your reader from an headine try at attention-grabbing to the body of your blog post, if you want to get it right on of these 10 clever ways to omen your next blog posr with a bang</p>
									<p>Best regards,</p>
									<p>Jason Muller</p>
								</div>
							</div>
						</div>
						<!--end::Messages-->
						<!--begin::Reply-->
						<div class="card-spacer mb-3" id="kt_inbox_reply">
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
													<span class="text-muted font-weight-bold cursor-pointer text-hover-primary" data-inbox="bcc-show">Bcc</span>
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
											<!--begin::BCC-->
											<div class="d-none align-items-center border-bottom inbox-to-bcc pl-8 pr-5 min-h-50px">
												<div class="text-dark-50 w-75px">Bcc:</div>
												<div class="flex-grow-1">
													<input type="text" class="form-control border-0" name="compose_bcc" value="" />
												</div>
												<span class="btn btn-clean btn-xs btn-icon" data-inbox="bcc-hide">
													<i class="la la-close"></i>
												</span>
											</div>
											<!--end::BCC-->
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
												<span class="btn btn-icon btn-sm btn-clean" data-inbox="dismiss" data-toggle="tooltip" title="Dismiss reply">
													<i class="flaticon2-rubbish-bin-delete-button"></i>
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
				<!--end::Card-->
			</div>
			<!--end::View-->
		</div>
		<!--end::Inbox-->
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
									<input type="text" class="form-control border-0" name="MAIL_RECIPIENT"/>
								</div>
								<div class="ml-2">
									<span class="text-muted font-weight-bold cursor-pointer text-hover-primary mr-2" data-inbox="cc-show">Cc</span>
								</div>
							</div>
							<!--end::To-->
							<!--begin::CC-->
							<div class="d-none align-items-center border-bottom inbox-to-cc pl-8 pr-5 min-h-45px">
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
								<input class="form-control border-0 px-8 min-h-45px" name="MAIL_SUBJECT" placeholder="제목" />
							</div>
							<!--end::Subject-->
							<!--begin::Message-->
							<div id="kt_inbox_compose_editor" class="border-0" style="height: 250px">
							<textarea name="MAIL_CONTENT" id="board_content" cols="67" rows="13" class="form-control" style="border:none"></textarea>
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
													<span class="navi-icon">
														<i class="flaticon2-medical-records"></i>
													</span>
													<span class="navi-text">임시 보관</span>
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
								<span class="btn btn-icon btn-sm btn-clean" data-inbox="dismiss" data-toggle="tooltip" title="Dismiss reply">
									<i class="flaticon2-rubbish-bin-delete-button"></i>
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
		<!--end::Compose-->
	</div>
	<!--end::Container-->
</div>
<!--end::Entry-->
</div>
<!--end::Content-->