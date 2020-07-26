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

p{margin-bottom:0}
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
<div class="d-flex flex-column-fluid">

	<!--begin::Container-->
	<div class="container">

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

								<input type="hidden" name="CM_MCODE" value="${memberinfo.m_CODE }"> 
								<input type="hidden" name="CM_TEAMNAME" value="${memberinfo.m_PART_C }">
								 <input type="hidden" name="CM_NAME" value="${memberinfo.m_NAME }">
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
												class="text-dark-50 "></span><span id="clock"> </span>
								</span>
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

<!--  공지  공지  공지  공지  공지  공지  공지  -->



<div class="col-xxl-8 order-2 order-xxl-1">

	<!--[html-partial:begin:{"id":"demo1/dist/inc/view/partials/content/widgets/advance-tables/widget-2","page":"index"}]/-->

	<!--begin::Advance Table Widget 2-->
	<div class="card card-custom card-stretch gutter-b">

		<!--begin::Header-->
		<div class="card-header border-0 pt-5">
			<h3 class="card-title align-items-start flex-column">
				<span class="card-label font-weight-bolder text-dark">공지게시판</span>
			</h3>
			
		</div>

		<!--end::Header-->

		<!--begin::Body-->
		<div class="card-body pt-3 pb-0">

			<!--begin::Table-->
			<div class="table-responsive">
				<table class="table table-hover" style="text-align: center; font-size: 13px;">
					<thead>
						<tr>
						<th scope="col">글번호</th>
							<th scope="col">말머리</th>
							<th scope="col">글제목</th>
							<th scope="col">작성자</th>
							<th scope="col">작성날짜</th>
							<th scope="col">조회수</th>
							
						</tr>
					</thead>
					<tbody>
						<c:set var="num" value="${listcount-(page1-1)*limit}" />
						<c:forEach var="b" items="${boardlist}">
							<tr>
								<th scope="row">
									<%--글번호--%> <c:out value="${num}" />
									<%--num 출력 --%> <c:set var="num" value="${num-1}" /> <%--num = num-1; 의미 --%>
								</th>
								<td>
									<%-- 말머리 --%>
									<div>${b.NO_SORT}</div>
								</td>
								<td>
									<%--제목 --%>
									<div>
										<c:if test="${b.NO_RE_LEV != 0}">
											<!-- 답글인 경우 -->
											<c:forEach var="a" begin="0" end="${b.NO_RE_LEV *2}" step="1">
                   				  &nbsp;
                    		  </c:forEach>
											<img src='resources/image/answerLine.gif'>
										</c:if>

										<c:if test="${b.NO_RE_LEV == 0}">
											<!-- 원문인 경우 -->
                   		  &nbsp;
                  		</c:if>
										<a href="./BoardDetailAction.no?num=${b.NO_NO}" style="color:#1B283F;">
											${b.NO_TITLE} </a>
									</div>
								</td>
								<td><div>
										<span
											class="label label-inline label-light-info font-weight-bold">
											인사팀 </span>
									</div></td>
								<td><div>${b.NO_DATE }</div></td>
								<%--작성날짜 --%>
								<td><div>${b.NO_READCOUNT}</div></td>
								<%--조회수 --%>
							</tr>
						</c:forEach>
						
						
						
						
					</tbody>
				</table>
				<!-- 레코드가 없으면 -->
				<c:if test="${listcount == 0}">
					<font size=5>등록된 글이 없습니다.</font>
				</c:if>
			</div>
			<div class="card-footer d-flex justify-content-between">
			
				<!--begin::Pagination-->
				<div
					class="d-flex justify-content-between align-items-center flex-wrap"
					style="margin: auto;">
					<div class="d-flex flex-wrap py-2 mr-3">
					<c:if test="${page1 <= 1 }">
               				<a class="btn btn-icon btn-sm btn-light mr-2 my-1"><i
							class="ki ki-bold-arrow-back icon-xs"></i></a> 
            	   </c:if>
						  <c:if test="${page1 > 1}">
						<a href="./BoardList.no?page=${page1 - 1}"
							class="btn btn-icon btn-sm btn-light mr-2 my-1"><i
							class="ki ki-bold-arrow-back icon-xs"></i></a> 
							</c:if>
							
					<c:forEach var="a" begin="${startpage}" end="${endpage}">
							  <c:if test="${a == page1 }">
							<a class="btn btn-icon btn-sm border-0 btn-hover-info active mr-2 my-1">${a }</a> 
							</c:if>
					          <c:if test="${a != page1}">  <!-- 같지 않으면, 이동할 수 있다 -->				
						<a href="./BoardList.no?page=${a}"
							class="btn btn-icon btn-sm border-0 btn-light mr-2 my-1">${a }</a> 
							</c:if>
					</c:forEach>
							
							  <c:if test="${page1 >= maxpage}">
						<a class="btn btn-icon btn-sm btn-light mr-2 my-1"><i
							class="ki ki-bold-arrow-next icon-xs"></i></a>
							</c:if>
							  <c:if test="${page1 < maxpage}">
							<a href="./BoardList.no?page=${page1 + 1 }" class="btn btn-icon btn-sm btn-light mr-2 my-1"><i
							class="ki ki-bold-arrow-next icon-xs"></i></a>
							</c:if>
					</div>
				</div>
			</div>

			<!--end::Table-->
		</div>

		<!--end::Body-->
	</div>

	<!--end::Advance Table Widget 2-->

	<!--[html-partial:end:{"id":"demo1/dist/inc/view/partials/content/widgets/advance-tables/widget-2","page":"index"}]/-->


</div>


<!--  notice  notice  notice  notice  notice  notice  -->
<div class="col-lg-6 col-xxl-4 order-1 order-xxl-2">

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
