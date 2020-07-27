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

#kt_content > div.alert.alert-custom.alert-white.alert-shadow.fade.show.gutter-b > button:nth-child(26) {
	background-color: white;
    border-style: none;
    width: 50px; height: 20px;
	
}

#kt_content > div.alert.alert-custom.alert-white.alert-shadow.fade.show.gutter-b > button:nth-child(23) {
	background-color: white;
    border-style: none;
    width: 50px; height: 20px;
    margin-left: 100px;
}


</style>
<title>사원 상세 조회</title>
</head>
<body>
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

	<div
		class="alert alert-custom alert-white alert-shadow fade show gutter-b"
		role="alert" style="margin-bottom: 0;">
		<table>
			<c:set var="m" value="${memberinfo}" />
			<tr class="member-cur">사원번호 : ${m.m_CODE}
			</tr>
			<br><br>
			<tr class="member-cur">이름 : ${m.m_NAME}
			</tr>
			<br><br>
			<tr class="member-cur">부서 : ${m.m_PART_C}
			</tr>
			<br><br>
			<tr class="member-cur">직급 : ${m.m_LEVEL}
			</tr>
			<br><br>
			<tr class="member-cur">E-mail : ${m.m_EMAIL}
			</tr>
			<br><br>
			<tr class="member-cur">핸드폰 번호 : ${m.m_MOBILE_TEL}
			</tr>
			<br><br>
			<tr class="member-cur">입사날짜 :
			</tr>
			<br><br>
			<tr class="member-cur">학교명 :
			</tr>
			<br><br>
			<tr class="member-cur">전공 :
			</tr>
			<br><br>
			<tr class="member-cur">어학 정보 :
			</tr>
			<br><br>
			<tr class="member-cur">자격증 :
			</tr>
			<br><br>
			<tr class="member-cur">
				<button type="button" name="button1" onclick="location.href='member_list' "> 
				<img src="resources/assets/media/svg/icons/General/Half-star.svg"/>
				</button>
			</tr>
			<br><br>
			<tr class="member-cur">
				<button type="button" name="button2" onclick="location.href='EmpWishlist' "> 
				<img src="resources/assets/media/svg/icons/Communication/Dial-numbers.svg"/>
				</button>
			</tr>
			<br><br>
		</table>
	</div>
</body>
</html>