<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
#kt_content {
	padding-top: 0px;
}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="content d-flex flex-column flex-column-fluid"
		id="kt_content">
		<div class="subheader py-2 py-lg-4 subheader-solid" id="kt_subheader">
			<div
				class="container-fluid d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
				<!--begin::Info-->
				<div class="d-flex align-items-center flex-wrap mr-1">
					<!--begin::Mobile Toggle-->
					<button
						class="burger-icon burger-icon-left mr-4 d-inline-block d-lg-none"
						id="kt_subheader_mobile_toggle">
						<span></span>
					</button>
					<!--end::Mobile Toggle-->
					<!--begin::Page Heading-->
					<div class="d-flex align-items-baseline mr-5">
						<!--begin::Page Title-->
						<h5 class="text-dark font-weight-bold my-2 mr-5">
							<i class="flaticon-users-1 text-info"></i> &nbsp;휴가관리
						</h5>
						<!--end::Page Title-->
						<small style="color: gray;">근태관리</small>
					</div>
					<!--end::Page Heading-->
				</div>
				<!--end::Info-->

			</div>
		</div>


		<div class="d-flex flex-column-fluid">
			<!--begin::Container-->
			<div class="container" style="margin-top: 23px;">
				<!--begin::Card-->
				<div class="card card-custom gutter-b">
					<div class="card-body">
						<!--begin::Details-->
						<div class="d-flex mb-9">
							<!--begin: Pic-->
							<div class="flex-shrink-0 mr-7 mt-lg-0 mt-3">
								<div class="symbol symbol-50 symbol-lg-120">
									<img src="resources/assets/media/users/300_1.jpg" alt="image">
								</div>
								<div
									class="symbol symbol-50 symbol-lg-120 symbol-primary d-none">
									<span class="font-size-h3 symbol-label font-weight-boldest">JM</span>
								</div>
							</div>
							<!--end::Pic-->
							<!--begin::Info-->
							<div class="flex-grow-1">
								<!--begin::Title-->
								<div class="d-flex justify-content-between flex-wrap mt-1">
									<div class="d-flex mr-3">
										<a href="#"
											class="text-dark-75 text-hover-primary font-size-h2 font-weight-bold mr-3"></a> 
										</a>
									</div>
									<div class="my-lg-0 my-3"></div>
								</div>
								<!--end::Title-->
								<!--begin::Content-->
								<div class="d-flex flex-wrap justify-content-between mt-1">
									<div class="d-flex flex-column flex-grow-1 pr-8">
										<div class="d-flex flex-wrap mb-4" style="margin-top: 14px; margin-bottom:8px;">
										<span class="text-dark-50  font-weight-bold mr-lg-8 mr-5 mb-lg-0 mb-2">
												<i class="flaticon2-placeholder mr-2 font-size-lg"></i>
											</span>
												<span class="text-dark-50  font-weight-bold mr-lg-8 mr-5 mb-lg-0 mb-2">
												<i class="flaticon2-calendar-3 mr-2 font-size-lg"></i>
											</span> 
											
										</div>
											<span class="text-dark-50  font-weight-bold mr-lg-8 mr-5 mb-lg-0 mb-2">
												<i class="flaticon2-new-email mr-2 font-size-lg"></i>
											</span>
									</div>
									<div
										class="d-flex align-items-center w-25 flex-fill float-right mt-lg-12 mt-8">
										
									</div>
								</div>
								<!--end::Content-->
							</div>
							<!--end::Info-->
						</div>
						<!--end::Details-->
						<div class="separator separator-solid"></div>
						<!--begin::Items-->
						<div class="d-flex align-items-center flex-wrap mt-8">
						
									<div class="d-flex align-items-center flex-lg-fill mr-5 mb-2">
								<span class="mr-4"> <i
									class="flaticon-more-v5 display-4 text-muted font-weight-bold"></i>
								</span>
								<div class="d-flex flex-column text-dark-75">
									<span class="font-weight-bolder font-size-sm">입사일</span> <span
										class="font-weight-bolder font-size-h5"> <span
										class="text-dark-50 font-weight-bold"></span>
									</span>
								</div>
							</div>
						
							<!--begin::Item-->
							<div class="d-flex align-items-center flex-lg-fill mr-5 mb-2">
								<span class="mr-4"> <i
									class= "flaticon-more-v5 display-4 text-muted font-weight-bold"></i>
								</span>
								<div class="d-flex flex-column text-dark-75">
									<span class="font-weight-bolder font-size-sm">연차잔여현황</span> <span
										class="font-weight-bolder font-size-h5"> <span
										class="text-dark-50 font-weight-bold"></span>
									</span>
								</div>
							</div>
							<!--end::Item-->
							<!--begin::Item-->
							<div class="d-flex align-items-center flex-lg-fill mr-5 mb-2">
								<span class="mr-4"> <i
									class="flaticon-more-v5 display-4 text-muted font-weight-bold"></i>
								</span>
								<div class="d-flex flex-column text-dark-75">
									<span class="font-weight-bolder font-size-sm">사용완료연차</span> <span
										class="font-weight-bolder font-size-h5"> <span
										class="text-dark-50 font-weight-bold"></span>
									</span>
								</div>
							</div>
							<!--end::Item-->
							<!--begin::Item-->
							<div class="d-flex align-items-center flex-lg-fill mr-5 mb-2">
								<span class="mr-4"> <i
									class="flaticon-more-v5 display-4 text-muted font-weight-bold"></i>
								</span>
								<div class="d-flex flex-column text-dark-75">
									<span class="font-weight-bolder font-size-sm">잔여연차</span> <span
										class="font-weight-bolder font-size-h5"> <span
										class="text-dark-50 font-weight-bold"></span>
									</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				
						<!--end::Row-->
				<div class="card card-custom">
					<div class="card-header flex-wrap border-0 pt-6 pb-0">
						<div class="card-title">
							<h3 class="card-label">
							<i class="flaticon-list-2 text-info"></i>&nbsp;
								휴가 사용 내역<span
									class="text-muted pt-2 font-size-sm d-block"></span>
							</h3>
						</div>
						<div class="card-toolbar"></div>
					</div>
					<div class="card-body pt-0 pb-3">
										<div class="tab-content">
											<!--begin::Table-->
											<div class="table-responsive">
												<table class="table table-hover" >
													<thead style="text-align:center;">
														<tr>
														<th>신청날짜</th>
															<th>신청자</th>
															<th>소속</th>
															<th>휴가구분</th>
															<th>시작일자</th>
															<th>종료일자</th>
															<th>휴가사유</th>
														</tr>
													</thead>
													<tbody style="text-align:center;">
														<tr>
															<td>
															2020-07-11
															</td>
															<td>
															이재희
															</td>
															<td>
															총무팀
															</td>
															<td>
															연차 (8h)
															</td>
															<td>
															2020-08-11
															</td>
															<td>
															2020-08-14
															</td>
															<td>
															리프레쉬 휴가
															</td>
														</tr>
														
														<!-- 삭제ok -->
																<tr>
															<td>
															2020-07-11
															</td>
															<td>
															이재희
															</td>
															<td>
															총무팀
															</td>
															<td>
															연차 (8h)
															</td>
															<td>
															2020-08-11
															</td>
															<td>
															2020-08-14
															</td>
															<td>
															리프레쉬 휴가
															</td>
														</tr>
														
													</tbody>
												</table>
											</div>
											<!--end::Table-->
										</div>
									</div>
					</div>
					</div>
				</div>
			
			</div>
				
</div>
</div>
</div>

</body>
</html>