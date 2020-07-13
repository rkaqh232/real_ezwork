<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- 민혁 -->
<html>
<head>

<title>사원 상세 조회</title>
</head>
<body>
	<table>
		<c:set var="m" value="${memberinfo}" />
		<tr>
			<td>${m.m_CODE }</td>
			<td>${m.m_NAME }</td>
			<td>${m.m_LEVEL }</td>
			<td>${m.m_PART_C }</td>
		</tr>
	</table>
</body>
</html>