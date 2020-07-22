<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- 민혁 -->
<html>
<head>
<style>
#kt_subheader {
	margin-top: -50px;
}

div.member-cur {
	margin-left: 30px;
}
</style>
<title>사원 상세 조회</title>
</head>
<body>
<div class="content d-flex flex-column flex-column-fluid"
		id="kt_content">
		<div class="subheader py-2 py-lg-4 subheader-solid" id="kt_subheader"
			style="margin-bottom: 25px;">
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
							<i class="flaticon-users-1 text-info"></i> &nbsp;사원 상세정보
						</h5>
						<!--end::Page Title-->
						<small style="color: gray;">사원 정보</small>
					</div>
					<!--end::Page Heading-->
				</div>
				<!--end::Info-->

			</div>
		</div>
	<table>
		<c:set var="m" value="${memberinfo}" />
		<div class="member-cur">사원번호 : ${m.m_CODE}</div><br>
		<div class="member-cur">이름 : ${m.m_NAME}</div><br>
		<div class="member-cur">부서 : ${m.m_PART_C}</div><br>
		<div class="member-cur">직급 : ${m.m_LEVEL}</div><br>
		<div class="member-cur">E-mail : ${m.m_EMAIL}</div><br>
		<div class="member-cur">핸드폰 번호 : ${m.m_MOBILE_TEL}</div><br>
		<div class="member-cur">입사날짜 : </div><br>
		<div class="member-cur">학교명 : </div><br>
		<div class="member-cur">전공 : </div><br>
		<div class="member-cur">어학 정보 : </div><br>
		<div class="member-cur">자격증 : </div><br>
		<div class="member-cur"><a href="member_list">사원 검색으로</a></div>
		<div class="member-cur"><a href="EmpWishlist">내 즐겨찾기로</a></div>
	</table>
</body>
</html>