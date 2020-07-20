<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
#kt_content {
	padding-top: 0px;
}
</style>
<script>
	$(function() {
		var check = '${check}';
		if (check == 0) {
			$('#start').prop('disabled', false);
			$('#end').prop('disabled', true);
		} else if (check == 1) {
			$('#start').prop('disabled', true);
			$('#end').prop('disabled', false);
		} else if (check == 2) {
			$('#start').prop('disabled', false);
			$('#end').prop('disabled', true);
		}
	})
</script>
</head>
<body onload="startTime()">
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
							<i class="flaticon-users-1 text-info"></i> &nbsp;일일 근태 등록
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
											class="text-dark-75 text-hover-primary font-size-h2 font-weight-bold mr-3">${memberinfo.m_NAME }</a>
										</a>
									</div>
									<div class="my-lg-0 my-3"></div>
								</div>
								<!--end::Title-->
								<!--begin::Content-->
								<div class="d-flex flex-wrap justify-content-between mt-1">
									<div class="d-flex flex-column flex-grow-1 pr-8">
										<div class="d-flex flex-wrap mb-4"
											style="margin-top: 14px; margin-bottom: 8px;">
											<span
												class="text-dark-50  font-weight-bold mr-lg-8 mr-5 mb-lg-0 mb-2">
												<i class="flaticon2-placeholder mr-2 font-size-lg"></i>${memberinfo.m_PART_C }
											</span> <span
												class="text-dark-50  font-weight-bold mr-lg-8 mr-5 mb-lg-0 mb-2">
												<i class="flaticon2-calendar-3 mr-2 font-size-lg"></i>Level
												${memberinfo.m_LEVEL }
											</span>

										</div>
										<span
											class="text-dark-50  font-weight-bold mr-lg-8 mr-5 mb-lg-0 mb-2">
											<i class="flaticon2-new-email mr-2 font-size-lg"></i>${memberinfo.m_EMAIL }
										</span>
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

							<div class="d-flex align-items-center flex-lg-fill mr-5 mb-2"
								style="width: 200px;">
								<span class="mr-4"> <i
									class="flaticon-clock-2 display-4 text-muted font-weight-bold"></i>
								</span>
								<div class="d-flex flex-column text-dark-75">
									<span class="font-weight-bolder font-size-sm">현재시간</span> <span
										class="font-weight-bolder font-size-h5"> <span
										class="text-dark-50 font-weight-bold"></span><span id="clock">
									</span>
									</span>
								</div>
							</div>

							<!--begin::Item-->
							<div class="d-flex align-items-center flex-lg-fill mr-5 mb-2">
								<span class="mr-4"> <i
									class="flaticon-users-1 display-4 text-muted font-weight-bold"></i>
								</span>
								<div class="d-flex flex-column text-dark-75">
									<span class="font-weight-bolder font-size-sm">근무시작시간</span> <span
										class="font-weight-bolder font-size-h5"> <span
										class="text-dark-50 font-weight-bold"></span> <c:if
											test="${!empty memberinfo2.CM_ONTIME }">
										${memberinfo2.CM_ONTIME }
										</c:if> <c:if test="${empty memberinfo2.CM_ONTIME }">
										미등록
										</c:if>
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
									<span class="font-weight-bolder font-size-sm">근무종료시간</span> <span
										class="font-weight-bolder font-size-h5"> <span
										class="text-dark-50 font-weight-bold"></span> <c:if
											test="${!empty memberinfo2.CM_OFFTIME }">
										${memberinfo2.CM_OFFTIME }
										</c:if> <c:if test="${empty memberinfo2.CM_OFFTIME }">
										미등록
										</c:if>
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
									<span class="font-weight-bolder font-size-sm">누적근무시간</span> <span
										class="font-weight-bolder font-size-h5"> <span
										class="text-dark-50 font-weight-bold"></span> <c:if
											test="${!empty memberinfo2.CM_WORKHOUR }">
										${memberinfo2.CM_WORKHOUR }
										</c:if> <c:if test="${empty memberinfo2.CM_WORKHOUR }">
										미등록
										</c:if>
									</span>
								</div>
							</div>
							<!--end::Item-->
							<!--begin::Item-->
							<form method="POST">
								<div class="d-flex align-items-center flex-lg-fill mr-5 mb-2">
									<span class="mr-4"> </span>
									<div class="d-flex flex-column flex-lg-fill">
										<input type="hidden" name="CM_MCODE"
											value="${memberinfo.m_CODE }"> <input type="hidden"
											name="CM_TEAMNAME" value="${memberinfo.m_PART_C }"> <input
											type="hidden" name="CM_NAME" value="${memberinfo.m_NAME }">
										<input type="hidden" name="M_CODE"
											value="${memberinfo.m_CODE }"> <span class="mr-4">
										</span>
										<div class="d-flex flex-column flex-lg-fill" style="width:140px;">
											<button type="submit"
												class="btn btn-info btn-shadow-hover font-weight-bolder w-100 py-3"
												id="start" formaction="OnTime.cm">출근 등록</button>
										</div>
									</div>
									<span class="mr-4"> </span>
									<div class="d-flex flex-column flex-lg-fill" style="width:140px;">
										<button type="submit"
											class="btn btn-outline-info btn-shadow-hover font-weight-bolder w-100 py-3"
											id="end" formaction="OffTime.cm">퇴근 등록</button>
									</div>
								</div>
							</form>

						</div>
					</div>
				</div>
				<div class="card card-custom">
					<div class="card-header flex-wrap border-0 pt-6 pb-0">
						<div class="card-title">
							<h3 class="card-label">
								<i class="flaticon-list-2 text-info"></i>&nbsp; 일일 근태 현황<span
									class="text-muted pt-2 font-size-sm d-block"></span>
							</h3>
						</div>
						<div class="card-toolbar"></div>
					</div>
					<div class="card-body pt-0 pb-3">
						<div class="tab-content">
							<!--begin::Table-->
							<div class="table-responsive">
								<table class="table table-hover">
									<thead style="text-align: center;">
										<tr>
											<th>NO</th>
											<th>등록일자</th>
											<th>사원번호</th>
											<th>부서명</th>
											<th>이름</th>
											<th>근무시작시간</th>
											<th>근무종료시간</th>
											<th>일일근무시간</th>
										</tr>
									</thead>
									<tbody style="text-align: center; font-size: 14px;">
										<c:set var="num" value="${listcount-(page1-1)*limit}" />
										<c:forEach var="co" items="${cmtlist}">
											<tr>
												<td>
													<%--글번호--%> <c:out value="${num}" /> <%--num 출력 --%> <c:set
														var="num" value="${num-1}" /> <%--num = num-1; 의미 --%>
												</td>
												<td>${co.CM_CODE }</td>
												<td>${co.CM_MCODE }</td>
												<td>${co.CM_TEAMNAME }</td>
												<td>${co.CM_NAME }</td>
												<td>${co.CM_ONTIME }</td>
												<td>${co.CM_OFFTIME }</td>
												<td>${memberinfo2.CM_WORKHOUR }</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<!-- 레코드가 없으면 -->
								<c:if test="${listcount == 0}">
									<div style="text-align: center; margin-bottom: 10px;">신청
										내역이 없습니다.</div>
								</c:if>
							</div>
							<!--end::Table-->
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	
	<!--end::Container-->
	<script src="resources/js/clock.js"></script>
</body>
</html>