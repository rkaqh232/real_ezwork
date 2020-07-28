<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

#kt_content {
	padding-top: 0px;
}
#kt_content>div>div>div.card-body>table>thead>tr>th:nth-child(1) {
	width: 8%
}

#kt_content>div>div>div.card-body>table>thead>tr>th:nth-child(2) {
	width: 10%
}

#kt_content>div>div>div.card-body>table>thead>tr>th:nth-child(3) {
	width: 45%
}

#kt_content>div>div>div.card-body>table>thead>tr>th:nth-child(4) {
	width: 12%
}

#kt_content>div>div>div.card-body>table>thead>tr>th:nth-child(5) {
	width: 18%
}

#kt_content>div>div>div.card-body>table>thead>tr>th:nth-child(6) {
	width: 7%
}
</style>
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
							<i class="flaticon-users-1 text-info"></i> &nbsp;사원 명부/조회
						</h5>
						<!--end::Page Title-->
						<small style="color: gray;">사원조회</small>
					</div>
					<!--end::Page Heading-->
				</div>
				<!--end::Info-->

			</div>
		</div>
		<!--end::Head-->
		<!--begin::Body-->

		<div class="d-flex flex-column-fluid">
		<div class="container" style="margin-top: 23px;">
		<div class="card card-custom">
			<div class="card-header">
				<div class="card-title">
					<span class="card-icon"> <i
						class="flaticon2-chat-1 text-info"></i>
					</span>
					<h3 class="card-label">
						공지사항 <small>게시판</small>
					</h3>
				</div>
				<div class="card-toolbar">
					글 개수 : ${listcount} &nbsp;&nbsp;
					<div class="rows">
						<select class="form-control" id="viewcount">
							<option value="1">1</option>
							<option value="3">3</option>
							<option value="5">5</option>
							<option value="7">7</option>
							<option value="10" selected>10</option>
						</select>
					</div>
					<a href="BoardWrite.no" class="btn btn-info"
						style="margin-left: 10px;">글쓰기</a>
				</div>
			</div>
			<div class="card-body">
				<!-- 레코드가 없으면 -->
				<!-- 	<c:if test="${listcount == 0}">
					<font size=5 style="">등록된 글이 없습니다.</font>
				</c:if>  -->
				<table class="table table-hover"
					style="text-align: center; font-size: 13px;">
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
		</div>
	</div>
	</div>
		<!--end::Card-->
	</div>
	<!--end:: Pagination-->

</body>
</html>