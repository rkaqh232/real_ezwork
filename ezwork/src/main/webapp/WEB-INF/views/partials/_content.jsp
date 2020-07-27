<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<style>
#memo {
	-ms-overflow-style: none; /* IE and Edge */
	scrollbar-width: none; /* Firefox */
}

#memo::-webkit-scrollbar {
	display: none; /* Chrome, Safari, Opera*/
}
#kt_content>div>div>div:nth-child(1)>div:nth-child(4)>div>div.card-body.pt-3.pb-0>div>table>tbody>tr>td:nth-child(4)
	{
	width: 200px;
	margin: 0 auto;
}

#kt_content>div>div>div:nth-child(1)>div:nth-child(4)>div>div.card-body.pt-3.pb-0>div>table>tbody>tr>td:nth-child(5)
	{
	width: 200px;
	margin: 0 auto;
}

#kt_content>div>div>div:nth-child(1)>div:nth-child(4)>div>div.card-body.pt-3.pb-0>div>table>tbody>tr>td:nth-child(6)
	{
	width: 200px;
}

 {
	margin-left: 30px;
}

p {
	margin-bottom: 0
}


#kt_content {
	padding-top: 0px;
}
</style>

<script src="resources/js/mail/maininbox.js"></script>
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

<!--begin::Entry-->
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
							<i class="flaticon-users-1 text-info"></i> &nbsp;그룹웨어
						</h5>
						<!--end::Page Title-->
						<small style="color: gray;"></small>
					</div>
					<!--end::Page Heading-->
				</div>
				<!--end::Info-->

			</div>
		</div>
<div class="d-flex flex-column-fluid">

	<!--begin::Container-->
	<div class="container" style="margin-top: 23px;">

		<!--[html-partial:begin:{"id":"demo1/dist/inc/view/demos/pages/index","page":"index"}]/-->

		<!--[html-partial:begin:{"id":"demo1/dist/inc/view/partials/content/dashboards/demo1","page":"index"}]/-->

		<!--begin::Dashboard-->

		<!--begin::Row-->
		<div class="row">
			<div class="col-lg-6 col-xxl-4">

				<!--[html-partial:begin:{"id":"demo1/dist/inc/view/partials/content/widgets/mixed/widget-1","page":"index"}]/-->

				<div class="card card-custom  card-stretch gutter-b">

					<!--begin::Header-->
					<div class="card-header border-0 py-5">
						<h3 class="card-title font-weight-bolder">나의 기본 정보</h3>
					</div>
					<form method="POST">
						<div class="card-body p-0 position-relative overflow-hidden">
							<div class="card-spacer mt-n25">
								<div class="text-center mb-10">
									<div class="symbol symbol-60 symbol-circle symbol-xl-90"
										style="margin-top: 57px;">
										<div class="symbol-label"
											style="background-image: url('resources/memberupload/${memberinfo.m_FILE}')"></div>
									</div>

									<div
										style="margin-top: 15px; margin-bottom: 5px; font-size: 17px;">
										<span class="font-weight-bold my-2">${memberinfo.m_NAME }</span>
										<div class="text-muted mb-2">Level ${memberinfo.m_LEVEL }</div>
									</div>
									<div>
										<div class="text-muted">${memberinfo.m_MOBILE_TEL }</div>
										<div class="text-muted">${memberinfo.m_EMAIL }</div>
									</div>

									<div style="margin-top: 12px;"
										class="label label-light-info label-inline font-weight-bold label-lg">${memberinfo.m_PART_C }</div>
								</div>

								<input type="hidden" name="CM_MCODE"
									value="${memberinfo.m_CODE }"> <input type="hidden"
									name="CM_TEAMNAME" value="${memberinfo.m_PART_C }"> <input
									type="hidden" name="CM_NAME" value="${memberinfo.m_NAME }">
								<input type="hidden" name="M_CODE" value="${memberinfo.m_CODE }">
								<span class="mr-4"> </span>

								<button type="submit" style="width: 150px"
									class="btn btn-info btn-shadow-hover font-weight-bolder py-3 px-6 mb-2 "
									id="start" formaction="OnTimeMain.cm">출근 등록</button>

								<button type="submit" style="width: 150px"
									class="btn btn-outline-info btn-shadow-hover font-weight-bolder py-3 px-6 mb-2 "
									id="end" formaction="OffTime.main" disabled="">퇴근 등록</button>

								<div class="py-9" style="font-size: 15px;">
									<div
										class="d-flex align-items-center justify-content-between mb-2">
										<span class="font-weight-bold mr-2">현재시간 : </span> <span
											class="text-dark-50 "></span><span id="clock"> </span> </span>
									</div>
									<div
										class="d-flex align-items-center justify-content-between mb-2">
										<span class="font-weight-bold mr-2">근무시작시간 :</span>
										<c:if test="${!empty memberinfo2.CM_ONTIME }">
										${memberinfo2.CM_ONTIME }</c:if>
										<c:if test="${empty memberinfo2.CM_ONTIME }">
										미등록
										</c:if>
										</span>
									</div>

									<div
										class="d-flex align-items-center justify-content-between mb-2">
										<span class="font-weight-bold mr-2">근무종료시간 :</span>
										<c:if test="${!empty memberinfo2.CM_OFFTIME }">
										${memberinfo2.CM_OFFTIME }</c:if>
										<c:if test="${empty memberinfo2.CM_OFFTIME }">
										미등록
										</c:if>
									</div>
					</form>
				</div>
				<!--end::Row-->
			</div>
			<!--end::Stats-->
			<div class="resize-triggers">
				<div class="expand-trigger">
					<div style="width: 880px; height: 429px;"></div>
				</div>
				<div class="contract-trigger"></div>
			</div>
			<div class="resize-triggers">
				<div class="expand-trigger">
					<div style="width: 880px; height: 229px;"></div>
				</div>
				<div class="contract-trigger"></div>
			</div>
		</div>

		<!--end::Body-->
	</div>
	<!--[html-partial:end:{"id":"demo1/dist/inc/view/partials/content/widgets/mixed/widget-1","page":"index"}]/-->
</div>
<div class="col-xxl-8 order-2 order-xxl-1">

	<!--[html-partial:begin:{"id":"demo1/dist/inc/view/partials/content/widgets/advance-tables/widget-2","page":"index"}]/-->

	<!--begin::Advance Table Widget 2-->
	<div class="card card-custom card-stretch gutter-b">

		<!--begin::Header-->
		<div class="card-header border-0 pt-5">
			<h3 class="card-title align-items-start flex-column">
				<span class="card-label font-weight-bolder text-dark">받은 메일함</span>
			</h3>
		</div>

		<!--end::Header-->

		<!--begin::Body-->
		<div class="card-body pt-3 pb-0">

			<!--begin::Table-->
			<div class="table-responsive">
				<table class="table table-hover table-vertical-center">
					<tbody id="mailtable">

					</tbody>
				</table>
			</div>

			<!--end::Table-->
		</div>

		<!--end::Body-->
	</div>

	<!--end::Advance Table Widget 2-->

	<!--[html-partial:end:{"id":"demo1/dist/inc/view/partials/content/widgets/advance-tables/widget-2","page":"index"}]/-->
</div>
<div class="col-lg-6 col-xxl-4 order-1 order-xxl-1">

	<!--[html-partial:begin:{"id":"demo1/dist/inc/view/partials/content/widgets/lists/widget-1","page":"index"}]/-->

	<!--begin::List Widget 1-->
	<div class="card card-custom card-stretch gutter-b">

		<!--begin::Header-->
		<div class="card-header border-0 pt-5" style="margin-bottom: -35px;">
			<h3 class="card-title align-items-start flex-column">
				<span class="card-label font-weight-bolder text-dark">나의 휴가
					정보</span>
			</h3>
		</div>


		<!--end::Header-->
		<!--begin::Body-->


		<div class="card-body pt-8">
			<div class="form-group">
				<label>입사일</label> <input type="text" disabled="disabled"
					class="form-control form-control-lg"
					value="${fn:substring(allist.AL_M_JOIN_DATE,0,10) }" /> <br>
				<label>연차휴가</label> <input type="text" disabled="disabled"
					class="form-control form-control-lg"
					value="${allist.AL_TOTALDAY } 일 남았습니다" /> <br> <label>사용휴가</label>
				<input type="text" disabled="disabled"
					class="form-control form-control-lg"
					value="${allist.AL_USED/8} 일 사용하셨습니다" /> <br> <label>잔여휴가</label>
				<input type="text" disabled="disabled"
					class="form-control form-control-lg"
					value="${allist.AL_TOTALDAY - allist.AL_USED/8} 일 남았습니다" />

				<div>
					<a href="Personallist.al" type="button" class="btn btn-info btn-lg"
						style="margin-top: 34px; margin-left: 121px;">상세보기</a>
				</div>
			</div>
		</div>
		<!--end::Body-->
	</div>

	<!--end::List Widget 1-->

	<!--[html-partial:end:{"id":"demo1/dist/inc/view/partials/content/widgets/lists/widget-1","page":"index"}]/-->
</div>

<!--end::List Widget 1-->

<!--[html-partial:end:{"id":"demo1/dist/inc/view/partials/content/widgets/lists/widget-1","page":"index"}]/-->
<div class="col-xxl-8 order-2 order-xxl-1">

	<!--[html-partial:begin:{"id":"demo1/dist/inc/view/partials/content/widgets/advance-tables/widget-2","page":"index"}]/-->

	<!--begin::Advance Table Widget 2-->
	<div class="card card-custom card-stretch gutter-b">

		<!--begin::Header-->
		<div class="card-header border-0 pt-5">
			<h3 class="card-title align-items-start flex-column">
				<span class="card-label font-weight-bolder text-dark">공지사항</span>
			</h3>
		</div>

			<table>
				<tr>
					<td width=61px;></td>
					<td width=250px;>#</td>
					<td width=195px; >제목</td>
					<td width=145px;>작성자</td>
					<td>날짜</td>
				</tr>
			</table>
		
		<!--end::Header-->
		<c:forEach var="m" items="${boardlist}">
			<!--begin::Body-->
			<div class="card-body pt-3 pb-0">

				<!--begin::Table-->
				<div class="table-responsive">
					<table class="table table-hover table-vertical-center">
						<tbody>
							<tr>
								<td class="pl-0 py-4"></td>
								<td class="pl-0">${m.NO_NO}</td>
								<td class="text-right"><span
									class="text-muted font-weight-500"> <a
										href="./BoardDetailAction.no?num=${m.NO_NO}">
											${m.NO_TITLE} </a>
								</span></td>
								<td class="text-right"><span
									class="label label-lg label-light-warning label-inline">${m.NO_NAME}</span></td>
								<td class="text-right"><span
									class="text-muted font-weight-500">${m.NO_DATE}</span></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!--end::Table-->
			</div>
		</c:forEach>
		<!--end::Body-->
	</div>

	<!--end::Advance Table Widget 2-->

	<!--[html-partial:end:{"id":"demo1/dist/inc/view/partials/content/widgets/advance-tables/widget-2","page":"index"}]/-->
</div>
<div class="col-lg-6 col-xxl-4 order-1 order-xxl-2">

	<!--[html-partial:begin:{"id":"demo1/dist/inc/view/partials/content/widgets/lists/widget-3","page":"index"}]/-->

	<!--begin::List Widget 3-->


	<!--end::List Widget 3-->

	<!--[html-partial:end:{"id":"demo1/dist/inc/view/partials/content/widgets/lists/widget-3","page":"index"}]/-->
</div>
<div class="col-lg-6 col-xxl-4 order-1 order-xxl-2">

	<!--[html-partial:begin:{"id":"demo1/dist/inc/view/partials/content/widgets/lists/widget-4","page":"index"}]/-->

	<!--begin::List Widget 4-->


	<!--end:List Widget 4-->

	<!--[html-partial:end:{"id":"demo1/dist/inc/view/partials/content/widgets/lists/widget-4","page":"index"}]/-->
</div>
<div class="col-lg-12 col-xxl-4 order-1 order-xxl-2">

	<!--[html-partial:begin:{"id":"demo1/dist/inc/view/partials/content/widgets/lists/widget-8","page":"index"}]/-->

	<!--begin::List Widget 8-->


	<!--end: Card-->

	<!--end::List Widget 8-->

	<!--[html-partial:end:{"id":"demo1/dist/inc/view/partials/content/widgets/lists/widget-8","page":"index"}]/-->
</div>
</div>

<!--end::Row-->

<!--begin::Row-->
<div class="row">
	<div class="col-lg-4">

		<!--[html-partial:begin:{"id":"demo1/dist/inc/view/partials/content/widgets/mixed/widget-14","page":"index"}]/-->

		<!--begin::Mixed Widget 14-->
		<div class="card card-custom card-stretch gutter-b">

			<!--begin::Header-->


			<!--end::Header-->

			<!--begin::Body-->


			<!--end::Body-->
		</div>

		<!--end::Mixed Widget 14-->

		<!--[html-partial:end:{"id":"demo1/dist/inc/view/partials/content/widgets/mixed/widget-14","page":"index"}]/-->
	</div>
	<div class="col-lg-8">

		<!--[html-partial:begin:{"id":"demo1/dist/inc/view/partials/content/widgets/advance-tables/widget-4","page":"index"}]/-->

		<!--begin::Advance Table Widget 4-->


		<!--end::Advance Table Widget 4-->

		<!--[html-partial:end:{"id":"demo1/dist/inc/view/partials/content/widgets/advance-tables/widget-4","page":"index"}]/-->
	</div>
</div>

<!--end::Row-->

<!--end::Dashboard-->

<!--[html-partial:end:{"id":"demo1/dist/inc/view/partials/content/dashboards/demo1","page":"index"}]/-->

<!--[html-partial:end:{"id":"demo1/dist/inc/view/demos/pages/index","page":"index"}]/-->
</div>


<!--end::Container-->
<!--end::Entry-->
<script src="resources/js/clock.js"></script>
