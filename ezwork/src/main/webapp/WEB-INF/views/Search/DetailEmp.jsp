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

#kt_content > div.alert.alert-custom.alert-white.alert-shadow.fade.show.gutter-b > div > div > button:nth-child(1) {
	background-color: white;
    border-style: none;
    width: 50px; height: 20px;
	margin-left: 390px;
}

#kt_content > div.alert.alert-custom.alert-white.alert-shadow.fade.show.gutter-b > div > div > button:nth-child(2) {
	background-color: white;
    border-style: none;
    width: 50px; height: 20px;
}

#kt_content > div.alert.alert-custom.alert-white.alert-shadow.fade.show.gutter-b {
	width: 600px;
	margin-left: 350px;
}

input[type=text] {
	width: 500px;
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
	<div class="card-body pt-8">
			<div class="form-group">
		
			<c:set var="m" value="${memberinfo}" />
			<button type="button" name="button1" onclick="location.href='member_list' "> 
				<span class="svg-icon svg-icon-danger svg-icon-2x">
				<!--begin::Svg Icon | path:C:\wamp64\www\keenthemes\themes\metronic\theme\html\demo1\dist/../src/media/svg/icons\Communication\Dial-numbers.svg--><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
    			<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        		<rect x="0" y="0" width="24" height="24"/>
        		<rect fill="#000000" opacity="0.3" x="4" y="4" width="4" height="4" rx="2"/>
        		<rect fill="#000000" x="4" y="10" width="4" height="4" rx="2"/>
        		<rect fill="#000000" x="10" y="4" width="4" height="4" rx="2"/>
        		<rect fill="#000000" x="10" y="10" width="4" height="4" rx="2"/>
        		<rect fill="#000000" x="16" y="4" width="4" height="4" rx="2"/>
        		<rect fill="#000000" x="16" y="10" width="4" height="4" rx="2"/>
        		<rect fill="#000000" x="4" y="16" width="4" height="4" rx="2"/>
        		<rect fill="#000000" x="10" y="16" width="4" height="4" rx="2"/>
        		<rect fill="#000000" x="16" y="16" width="4" height="4" rx="2"/>
    			</g>
				</svg><!--end::Svg Icon--></span>
				</button>
			
				<button type="button" name="button2" onclick="location.href='EmpWishlist' "> 
				<span class="svg-icon svg-icon-warning svg-icon-2x"><!--begin::Svg Icon | path:C:\wamp64\www\keenthemes\themes\metronic\theme\html\demo1\dist/../src/media/svg/icons\General\Half-star.svg--><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
    			<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        		<polygon points="0 0 24 0 24 24 0 24"/>
        		<path d="M12,4.25932872 C12.1488635,4.25921584 12.3000368,4.29247316 12.4425657,4.36281539 C12.6397783,4.46014562 12.7994058,4.61977315 12.8967361,4.81698575 L14.9389263,8.95491503 L19.5054023,9.61846284 C20.0519472,9.69788046 20.4306287,10.2053233 20.351211,10.7518682 C20.3195865,10.9695052 20.2170993,11.1706476 20.0596157,11.3241562 L16.7552826,14.545085 L17.5353298,19.0931094 C17.6286908,19.6374458 17.263103,20.1544017 16.7187666,20.2477627 C16.5020089,20.2849396 16.2790408,20.2496249 16.0843804,20.1472858 L12,18 L12,4.25932872 Z" fill="#000000" opacity="0.3"/>
        		<path d="M12,4.25932872 L12,18 L7.91561963,20.1472858 C7.42677504,20.4042866 6.82214789,20.2163401 6.56514708,19.7274955 C6.46280801,19.5328351 6.42749334,19.309867 6.46467018,19.0931094 L7.24471742,14.545085 L3.94038429,11.3241562 C3.54490071,10.938655 3.5368084,10.3055417 3.92230962,9.91005817 C4.07581822,9.75257453 4.27696063,9.65008735 4.49459766,9.61846284 L9.06107374,8.95491503 L11.1032639,4.81698575 C11.277344,4.464261 11.6315987,4.25960807 12,4.25932872 Z" fill="#000000"/>
    			</g>
				</svg><!--end::Svg Icon--></span>
				</button>
				
				<br><br>
			
			<label>사원번호</label>
			<input type="text" disabled="disabled"
					class="form-control form-control-lg"
					value="${m.m_CODE}" /><br>
			
			<label>이름</label>
			<input type="text" disabled="disabled"
					class="form-control form-control-lg"
					value="${m.m_NAME}" /><br>
			
			<label>부서</label>
			<input type="text" disabled="disabled"
					class="form-control form-control-lg"
					value="${m.m_PART_C}" /><br>
			
			<label>직급</label>
			<input type="text" disabled="disabled"
					class="form-control form-control-lg"
					value="${m.m_LEVEL}" /><br>
			
			<label>이메일</label>
			<input type="text" disabled="disabled"
					class="form-control form-control-lg"
					value="${m.m_EMAIL}" /><br>
			
			<label>핸드폰 번호</label>
			<input type="text" disabled="disabled"
					class="form-control form-control-lg"
					value="${m.m_MOBILE_TEL}" /><br>
			
			<label>입사날짜</label>
			<input type="text" disabled="disabled"
					class="form-control form-control-lg"
					value="" /><br>
			
			<label>학교명</label>
			<input type="text" disabled="disabled"
					class="form-control form-control-lg"
					value="" /><br>
			
			<label>전공</label>
			<input type="text" disabled="disabled"
					class="form-control form-control-lg"
					value="" /><br>
			
			<label>어학 정보</label>
			<input type="text" disabled="disabled"
					class="form-control form-control-lg"
					value="" /><br>
			
			<label>자격증</label>
			<input type="text" disabled="disabled"
					class="form-control form-control-lg"
					value="" /><br>
			</div>
		</div>
	</div>
</body>
</html>