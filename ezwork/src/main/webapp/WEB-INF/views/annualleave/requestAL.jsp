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
							<i class="flaticon-users-1 text-info"></i> &nbsp;휴가신청
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
						<div class="d-flex align-items-center flex-wrap mt-4">
							<div class="d-flex align-items-center flex-lg-fill mr-5 mb-2"">
								<span class="mr-4"> <i
									class="flaticon-clock-2 display-4 text-muted font-weight-bold"></i>
								</span>
								<div class="d-flex flex-column text-dark-75">
									<span class="font-weight-bolder font-size-sm">입사일</span> <span
										class="font-weight-bolder font-size-h5">2020-04-01<span
										class="text-dark-50 font-weight-bold"></span>
									</span>
								</div>
							</div>

							<!--begin::Item-->
							<div class="d-flex align-items-center flex-lg-fill mr-5 mb-2">
								<span class="mr-4"> <i
									class="flaticon-users-1 display-4 text-muted font-weight-bold"></i>
								</span>
								<div class="d-flex flex-column text-dark-75">
									<span class="font-weight-bolder font-size-sm">연차잔여현황</span> <span
										class="font-weight-bolder font-size-h5">16일<span
										class="text-dark-50 font-weight-bold"></span>
									</span>
								</div>
							</div>
							<!--end::Item-->
							<!--begin::Item-->
							<div class="d-flex align-items-center flex-lg-fill mr-5 mb-2">
								<span class="mr-4"> <i
									class="flaticon-users display-4 text-muted font-weight-bold"></i>
								</span>
								<div class="d-flex flex-column text-dark-75">
									<span class="font-weight-bolder font-size-sm">사용완료연차</span> <span
										class="font-weight-bolder font-size-h5">3일<span
										class="text-dark-50 font-weight-bold"></span>
									</span>
								</div>
							</div>
							<!--end::Item-->
							<!--begin::Item-->
							<div class="d-flex align-items-center flex-lg-fill mr-5 mb-2">
								<span class="mr-4"> <i
									class="flaticon-pie-chart display-4 text-muted font-weight-bold"></i>
								</span>
								<div class="d-flex flex-column text-dark-75">
									<span class="font-weight-bolder font-size-sm">잔여연차</span> <span
										class="font-weight-bolder font-size-h5">13일<span
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
								<i class="flaticon-list-2 text-info"></i>&nbsp; 휴가 신청<span
									class="text-muted pt-2 font-size-sm d-block"></span>
							</h3>
						</div>
						<div class="card-toolbar">
							<a href="#" class="btn btn-info" style="margin-left: 10px;">제출</a>
						</div>
					</div>
					<div class="card-body pt-0 pb-3">
						<div class="tab-content">
							<!--begin::Table-->

							<div class="card-body">
								<table class="table">
									<colgroup>
										<col width="10%">
										<col width="40%">
										<col width="10%">
										<col width="40%">
									</colgroup>
									<tbody style="text-align: center; font-size: 14px;">
										<tr>
											<th class="table-Secondary" style="text-align: center;"><div>신청자</div></th>
											<td><div>이재희</div></td>
											<th class="table-Secondary"><div>소속</div></th>
											<td><div>총무팀</div></td>
										</tr>
										<tr>
											<th class="table-Secondary"><div>휴가구분</div></th>
											<td colspan="3"><div>
												<div class="col-10">
														<select
															class="form-control col-5" id="exampleSelect1">
															<option value="8">연차 (8h)</option>
															<option value="4">반차 (4h)</option>
															<option value="0">병가 (0h)</option>
															<option value="8">예비군 (8h)</option>
															<option value="4">경조사 (4h)</option>
														</select>
													</div>

												</div></td>
										</tr>
										<tr>
											<th class="table-Secondary"><div>시작일자</div></th>
											<td>
														<div class="col-10">
															<input class="form-control" type="date"
																id="example-date-input" />
														</div>
													
												</td>
											<th class="table-Secondary"><div>종료일자</div></th>
											<td>
														<div class="col-10">
															<input class="form-control" type="date"
																id="example-date-input" />
														</div>
												</td>
										</tr>
										<tr height="120px">
											<th class="table-Secondary"><div>휴가사유</div></th>
											<td colspan="3">
											<div>
											 <textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
											</div></td>
										</tr>
									</tbody>
								</table>


								<!--end::Table-->
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
</body>
</html>