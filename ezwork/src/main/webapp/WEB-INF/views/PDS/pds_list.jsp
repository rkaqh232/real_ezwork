<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EZWORK | 자료실  | 글 목록</title>
<style>
#kt_content>div>div>div.card-body>table>thead>tr>th:nth-child(1) {
	width: 8%
}

#kt_content>div>div>div.card-body>table>thead>tr>th:nth-child(2) {
	width: 10%
}

#kt_content>div>div>div.card-body>table>thead>tr>th:nth-child(3) {
	width: 45%
}

#kt_content > div > div > div.card-body > table > tbody > tr > td:nth-child(7) {
	width: 65px;
}

.thth5 {
	width: 100px;
}

.thth7 {
	width: 70px;
}

#kt_content>div>div>div.card-body>table>thead>tr>th:nth-child(4) {
	width: 12%
}

#kt_content>div>div>div.card-body>table>thead>tr>th:nth-child(6) {
	width: 7%
}


</style>
</head>
<body>
	<div class="container">
		<div class="card card-custom">
			<div class="card-header">
				<div class="card-title">
					<span class="card-icon"> <i
						class="flaticon2-chat-1 text-info"></i>
					</span>
					<h3 class="card-label">
						자료실  <small>사내 자료실</small>
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
					<a href="PdsWrite" class="btn btn-info"
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
							<th scope="col" class="thth1">글번호</th>
							<th scope="col" class="thth2">말머리</th>
							<th scope="col" class="thth3">글제목</th>
							<th scope="col" class="thth4">작성자</th>
							<th scope="col" class="thth5">작성날짜</th>
							<th scope="col" class="thth6">조회수</th>
							<th scope="col" class="thth7">첨부파일</th>
						</tr>
					</thead>
					<tbody>
						<c:set var="num" value="${listcount-(page1-1)*limit}" />
						<c:forEach var="b" items="${boardlist}">
							<tr>
								<th scope="row">
									<%--글번호--%> <c:out value="${num}" /> <%--num 출력 --%> <c:set
										var="num" value="${num-1}" /> <%--num = num-1; 의미 --%>
								</th>
								<td>
									<%-- 말머리 --%>
									<div>${b.PDS_SORT}</div>
								</td>
								<td>
									<%--제목 --%>
									<div>
										<c:if test="${b.PDS_RE_LEV != 0}">
											<!-- 답글인 경우 -->
											<c:forEach var="a" begin="0" end="${b.PDS_RE_LEV *2}" step="1">
                   				  &nbsp;
                    		  </c:forEach>
											<img src='resources/image/answerLine.gif'>
										</c:if>

										<c:if test="${b.PDS_RE_LEV == 0}">
											<!-- 원문인 경우 -->
                   		  &nbsp;
                  		</c:if>
										<a href="./PdsDetail?num=${b.PDS_NO}"
											style="color: #1B283F;"> ${b.PDS_TITLE} </a>
									</div>
								</td>
								<td><div>
										<span
											class="label label-inline label-light-info font-weight-bold">
											관리자 </span>
									</div></td>
								<td><div>${b.PDS_DATE }</div></td>
								<%--작성날짜 --%>
								<td><div>${b.PDS_READCOUNT}</div></td>
								<%--조회수 --%>
								
								<td>
									<div>
										<a href="PdsFileDown?filename=${b.PDS_FILE}&original=${b.PDS_ORIGINAL}">
											<span class="svg-icon svg-icon-success svg-icon-2x"><!--begin::Svg Icon | path:C:\wamp64\www\keenthemes\themes\metronic\theme\html\demo1\dist/../src/media/svg/icons\Files\Cloud-download.svg--><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
    										<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        									<polygon points="0 0 24 0 24 24 0 24"/>
        									<path d="M5.74714567,13.0425758 C4.09410362,11.9740356 3,10.1147886 3,8 C3,4.6862915 5.6862915,2 9,2 C11.7957591,2 14.1449096,3.91215918 14.8109738,6.5 L17.25,6.5 C19.3210678,6.5 21,8.17893219 21,10.25 C21,12.3210678 19.3210678,14 17.25,14 L8.25,14 C7.28817895,14 6.41093178,13.6378962 5.74714567,13.0425758 Z" fill="#000000" opacity="0.3"/>
        									<path d="M11.1288761,15.7336977 L11.1288761,17.6901712 L9.12120481,17.6901712 C8.84506244,17.6901712 8.62120481,17.9140288 8.62120481,18.1901712 L8.62120481,19.2134699 C8.62120481,19.4896123 8.84506244,19.7134699 9.12120481,19.7134699 L11.1288761,19.7134699 L11.1288761,21.6699434 C11.1288761,21.9460858 11.3527337,22.1699434 11.6288761,22.1699434 C11.7471877,22.1699434 11.8616664,22.1279896 11.951961,22.0515402 L15.4576222,19.0834174 C15.6683723,18.9049825 15.6945689,18.5894857 15.5161341,18.3787356 C15.4982803,18.3576485 15.4787093,18.3380775 15.4576222,18.3202237 L11.951961,15.3521009 C11.7412109,15.173666 11.4257142,15.1998627 11.2472793,15.4106128 C11.1708299,15.5009075 11.1288761,15.6153861 11.1288761,15.7336977 Z" fill="#000000" fill-rule="nonzero" transform="translate(11.959697, 18.661508) rotate(-270.000000) translate(-11.959697, -18.661508) "/>
    										</g>
											</svg><!--end::Svg Icon--></span>
										</a>
									</div>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<!-- 레코드가 없으면 -->
				<c:if test="${listcount == 0}">
					<div style="text-align: center;">등록된 글이 없습니다.</div>
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
							<a href="./Pdslist?page=${page1 - 1}"
								class="btn btn-icon btn-sm btn-light mr-2 my-1"><i
								class="ki ki-bold-arrow-back icon-xs"></i></a>
						</c:if>

						<c:forEach var="a" begin="${startpage}" end="${endpage}">
							<c:if test="${a == page1 }">
								<a
									class="btn btn-icon btn-sm border-0 btn-hover-info active mr-2 my-1">${a }</a>
							</c:if>
							<c:if test="${a != page1}">
								<!-- 같지 않으면, 이동할 수 있다 -->
								<a href="./Pdslist?page=${a}"
									class="btn btn-icon btn-sm border-0 btn-light mr-2 my-1">${a }</a>
							</c:if>
						</c:forEach>

						<c:if test="${page1 >= maxpage}">
							<a class="btn btn-icon btn-sm btn-light mr-2 my-1"><i
								class="ki ki-bold-arrow-next icon-xs"></i></a>
						</c:if>
						<c:if test="${page1 < maxpage}">
							<a href="./Pdslist?page=${page1 + 1 }"
								class="btn btn-icon btn-sm btn-light mr-2 my-1"><i
								class="ki ki-bold-arrow-next icon-xs"></i></a>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--end:: Pagination-->

</body>
</html>