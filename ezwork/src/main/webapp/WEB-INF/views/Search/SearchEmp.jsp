<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- 민혁 -->
<html>
<head>
<meta charset="EUC-KR">
<title>ezWork 사원 검색 페이지</title>
<style>
table caption {
	caption-side: top;
	text-align: center;
}

body > div > table {
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

li .current {
	background: #faf7f7;
	color: gray;
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
	width: 60%
}

td:nth-child(1) {
	width: 33%
}
</style>
</head>
<body>
	<div class="container">
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

		<%--회원이 있는 경우--%>
		<c:if test="${listcount > 0 }">
			<table class="table table-striped">
				<caption>사원 목록</caption>
				<thead>
					<tr>
						<th colspan="2">ezWork - 사원 검색 list</th>
						<th><font size=3>사원 수: ${listcount }</font></th>
					</tr>
					<tr>
						<td>사원 번호</td>
						<td>소속 부서</td>
						<td>이름</td>
						<td>직급</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="m" items="${memberlist}">
						<tr>
							<td><a href="member_info?empnum=${m.empnum}">${m.empnum}</a></td>
							<td>${m.department}</td>
							<td>${m.name}</td>
							<td>${m.rank}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="center-block">
				<div class="row">
					<div class="col">
						<ul class="pagination">
							<c:if test="${page<=1 }">
								<li class="page=item"><a class="page-link current" href="#">이전&nbsp;</a>
								</li>
							</c:if>
							<c:if test="${page>1 }">
								<li class="page-item"><a
									href="member_list?page=${page-1}&search_field=${search_field}&search_word=${search_word}"
									class="page-link">이전</a>&nbsp;</li>
							</c:if>

							<c:forEach var="a" begin="${startpage}" end="${endpage}">
								<c:if test="${a==page }">
									<li class="page-item"><a class="page-link current"
										href="#">${a}</a></li>
								</c:if>
								<c:if test="${a != page }">
									<li class="page-item"><a
										href="member_list?page=${a}&search_field=${search_field}&search_word=${search_word}"
										class="page-link">${a}</a></li>
								</c:if>
							</c:forEach>

							<c:if test="${page>=maxpage }">
								<li class="page-item"><a class="page-link current" href="#">&nbsp;다음</a>
								</li>
							</c:if>
							<c:if test="${page< maxpage}">
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

	<%--회원이 없는 경우 --%>
	<c:if test="${listcount ==0 }">
		<h1>검색 결과가 없습니다.</h1>
	</c:if>
</body>
</html>