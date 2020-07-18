<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- 민혁 -->
<html>
<script src="resources/js/jquery-3.5.0.js"></script>
<head>
<title>ezWork 사원 검색 페이지</title>

<style>
table caption {
	caption-side: top;
	text-align: center;
}

body>div>table {
	width: 60%;
	margin: auto;
}

h1 {
	text-align: center;
}

.center-block {
	display: flex;
	justify-content: center; /*가운데 정렬*/
}

#kt_subheader {
	width: 700px;
	left: 550px;
	position: absolute;
}

#kt_content>div>div.container>div {
	position: absolute;
	width: 1000px;
	left: 400px;
	top: 180px;
}

#kt_subheader_search>form>div>input {
	width: 330px;
	height: 40px;
	position: absolute;
	left: 100px;
	top: -9px;
}

#kt_subheader_search>form>div>button {
	width: 60px;
	height: 40px;
	position: absolute;
	left: 450px;
	top: -9px;
}

li .current {
	background: #faf7f7;
	color: gray;
}

.yellow {
	background: yellow;
}

form {
	margin: 0 auto;
	width: 80%;
	text-align: center;
}

select {
	color: #495057;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid #ced4da;
	border-radius: .25rem;
	transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;
}

.container {
	width: 100%
}

#kt_content>div>div.container>div>div {
	width: 100%;
}

td:nth-child(1) {
	width: 33%
}
</style>
</head>

<script>
	$(function() {
		//즐겨찾기 버튼 클릭 시 즐겨찾기 추가 또는 삭제
		$(".bookmarkbutton").click(
				function() {
					senddata = $(this).parent().parent().parent().find("input")
							.first().val();
					senddata2 = $(this).parent().parent().parent()
							.find("input").eq(1).val();
					t = $(this);
					if (senddata2 == 0) {
						t.addClass('yellow');
					} else {
						t.removeClass('yellow');
					}
					$.ajax({
						url : "updatebookmark",
						type : "GET",
						data : {
							"id" : senddata,
							"bookmark" : senddata2
						},
						success : function(data) {
							//[{"m_BOOKMARK":1,"m_CODE":"park","m_OWNER":"park"},{"m_BOOKMARK":1,"m_CODE":"park","m_OWNER":"park"},{"m_BOOKMARK":1,"m_CODE":"park","m_OWNER":"park"}]
							console.log("data값은" + data.m_BOOKMARK);
							console.log("data값은" + data.m_CODE);
							console.log("data값은" + data.m_OWNER);
							if (data.length == 0) {
								t.parent().parent().parent().find("input")
										.eq(1).val(0);
							} else {
								$.each(data, function(i, item) {
									t.parent().parent().parent().find("input")
											.eq(1).val(item.m_BOOKMARK);

								})
							} // 결론은 db에 저장된 변경된 bookmark 1값을 SearchEmp.jsp에 반영시켜주고 싶습니다.

							/*
							t.parent().parent().parent().find("input").eq(1).val(bminf.bookmark);
							if (data != null) {
								t.addClass('yellow');
							} else {
								t.removeClass('yellow');
							}
							 */

						}//success
					});//ajax
				});//click
	});
</script>
<body>
	<div class="container">

		<div class="subheader py-2 py-lg-4 subheader-solid" id="kt_subheader">
			<div
				class="container-fluid d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
				<!--begin::Details-->
				<div class="d-flex align-items-center flex-wrap mr-2">
					<!--begin::Title-->
					<h5 class="text-dark font-weight-bold mt-2 mb-2 mr-5">사원 검색</h5>
					<!--end::Title-->
					<!--begin::Separator-->
					<div
						class="subheader-separator subheader-separator-ver mt-2 mb-2 mr-5 bg-gray-200"></div>
					<!--end::Separator-->
					<!--begin::Search Form-->
					<div class="d-flex align-items-center" id="kt_subheader_search">
						<form action="member_list">
							<div class="input-group">
								<select id="viewcount" name="search_field">
									<option value="0" selected>사원번호</option>
									<option value="1">부서</option>
									<option value="2">이름</option>
									<option value="3">직급</option>
								</select> <input name="search_word" type="text" class="form-control"
									placeholder="Search" value="${search_word}">
								<button class="btn btn-primary" type="submit">검색</button>
							</div>
						</form>
					</div>
					<!--end::Search Form-->
				</div>
				<!--end::Details-->
			</div>
		</div>

		<br>

		<div class="container">
			<!--begin::Card-->
			<div class="card card-custom gutter-b">
				<div class="card-body">
					<%--회원이 있는 경우--%>
					<c:if test="${listcount > 0 }">
						<table class="table table-striped">
							<thead>
								<tr>
									<font size=3>사원 수: ${listcount }</font>
								</tr>
								<tr>
									<td>사원 번호</td>
									<td>소속 부서</td>
									<td>이름</td>
									<td>직급</td>
								</tr>
								<hr>
							</thead>
							<tbody>
								<c:forEach var="m" items="${memberlist}">
									<tr>
										<input type="hidden" name="ajaxmcode" value="${m.m_CODE}">
										<input type="hidden" name="bookmark" value="${m.m_BOOKMARK}">
										<td><a href="member_info?m_code=${m.m_CODE}">${m.m_CODE}</a></td>
										<td>${m.m_PART_C}</td>
										<td>${m.m_NAME}</td>
										<td>${m.m_LEVEL}</td>
										<td><p>
												<c:set var="bk" value="${m.m_BOOKMARK}" />
												<c:if test="${bk == 1 }">
													<button class="bookmarkbutton yellow">☆</button>
												</c:if>
												<c:if test="${bk == 0 }">
													<button class="bookmarkbutton">☆</button>
												</c:if>
											</p></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<div class="center-block">
							<div class="row">
								<div class="col">
									<ul class="pagination">
										<c:if test="${page1 <= 1}">
											<li class="page=item"><a class="page-link current"
												href="#">이전&nbsp;</a></li>
										</c:if>
										<c:if test="${page1 > 1}">
											<li class="page-item"><a
												href="member_list?page=${page-1}&search_field=${search_field}&search_word=${search_word}"
												class="page-link">이전</a>&nbsp;</li>
										</c:if>

										<c:forEach var="a" begin="${startpage}" end="${endpage}">
											<c:if test="${a eq page1 }">
												<li class="page-item"><a class="page-link current"
													href="#">${a}</a></li>
											</c:if>
											<c:if test="${a ne page1 }">
												<li class="page-item"><a
													href="member_list?page=${a}&search_field=${search_field}&search_word=${search_word}"
													class="page-link">${a}</a></li>
											</c:if>
										</c:forEach>

										<c:if test="${page1>=maxpage }">
											<li class="page-item"><a class="page-link current"
												href="#">&nbsp;다음</a></li>
										</c:if>
										<c:if test="${page1< maxpage}">
											<li class="page-item"><a
												href="member_list?page=${page+1}&search_field=${search_field}&search_word=${search_word}"
												class="page-link">&nbsp;다음</a></li>
										</c:if>
									</ul>
								</div>
							</div>
						</div>
					</c:if>
				</div>
			</div>
		</div>
	</div>

	<%--회원이 없는 경우 --%>
	<c:if test="${listcount eq 0 }">
		<h1>검색 결과가 없습니다.</h1>
	</c:if>
</body>
</html>