<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>


<html>



<!--begin::Head-->
<head>

<style>
body {
	display: flex !important;
}
</style>


<meta charset="utf-8" />
<title>EZwork</title>
<meta name="description" content="Login page example" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />


<!--begin::Fonts-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />
<!--end::Fonts-->

<!--begin::Page Custom Styles(used by this page)-->
<link
	href="resources/assets/css/pages/login/classic/login-3.css"
	rel="stylesheet" type="text/css" />
<!--end::Page Custom Styles-->

<!--begin::Global Theme Styles(used by all pages)-->
<link href="resources/assets/plugins/global/plugins.bundle.css"
	rel="stylesheet" type="text/css" />
<link
	href="resources/assets/plugins/custom/prismjs/prismjs.bundle.css"
	rel="stylesheet" type="text/css" />
<link href="resources/assets/css/style.bundle.css"
	rel="stylesheet" type="text/css" />
<!--end::Global Theme Styles-->

<!--begin::Layout Themes(used by all pages)-->
<link href="resources/assets/css/themes/layout/brand/dark.css"
	rel="stylesheet" type="text/css" />
<link href="resources/assets/css/themes/layout/aside/dark.css"
	rel="stylesheet" type="text/css" />
<!--end::Layout Themes-->

<link rel="shortcut icon"
	href="resources/assets/media/logos/favicon.ico" />
<script src="resources/js/jquery-3.5.0.js"></script>
<script>
/* $(function(){
   $(".kt_login_signin_submit").click(function(){
      location.href="loginProcess.net";
   });
}); */
</script>
</head>



<!--end::Head-->
<!--begin::Body-->
<body id="kt_body"
	class="header-fixed header-mobile-fixed subheader-enabled subheader-fixed aside-enabled aside-fixed aside-minimize-hoverable page-loading">
	<!--begin::Main-->
	<div class="d-flex flex-column flex-root">
		<!--begin::Login-->
		<div class="login login-3 login-signin-on d-flex flex-row-fluid"
			id="kt_login">
			<div
				class="d-flex flex-center bgi-size-cover bgi-no-repeat flex-row-fluid"
				style="background-image: url(resources/assets/media/bg/bg-1.jpg);">
				<!--  배경이미지 -->
				<div
					class="login-form text-center text-white p-7 position-relative overflow-hidden">


					<!--begin::Login Header-->
					<!--  로고 부분  -->
					<div class="d-flex flex-center mb-5">
						<a href="#"> <img
							src="resources/assets/media/logos/main-logo.png" alt=""
							style="width: 100%;" />
						</a>
					</div>
					<!--end::Login Header-->


				
					<div class="login-signin">
						<!-- <div class="mb-20">
								<h3>Sign In To Admin</h3>
								<p class="opacity-60 font-weight-bold">Enter your details to login to your account:</p>
							</div> -->
						<form class="form" action="loginProcess.net" method="post" id="kt_login_signin_form">
							<div class="form-group">
								<input
									class="form-control h-auto text-white placeholder-white opacity-70 bg-dark-o-70 rounded-pill border-0 py-4 px-8 mb-5"
									type="text" placeholder="사원번호" name="M_CODE" id="M_CODE" autocomplete="off"
									 <c:if test="${!empty saveid }">
     									 value="${saveid }"
     									 </c:if>
     									 >
							</div>
							<div class="form-group">
								<input
									class="form-control h-auto text-white placeholder-white opacity-70 bg-dark-o-70 rounded-pill border-0 py-4 px-8 mb-5"
									type="password" placeholder="비밀번호" name="M_PASS" id="M_PASS" />
							</div>
							<div
								class="form-group d-flex flex-wrap justify-content-between align-items-center px-8">
								<label
									class="checkbox checkbox-outline checkbox-white text-white m-0">
									<input type="checkbox" name="remember" 
									<c:if test="${!empty saveid}">
    								  checked
     								 </c:if>/> 사번 저장 <span></span>
								</label> 
								<a href="javascript:;" id="kt_login_forgot"
									class="text-white font-weight-bold"> ▶ 비밀번호 찾기 </a>
							</div>
							<div class="form-group text-center mt-10">
								<button id="kt_login_signin_submit" class="btn btn-pill btn-outline-white font-weight-bold opacity-90 px-15 py-3">
								<a href="loginProcess.net"></a>
									Login</button>
							</div>
						</form>
						<!--  삭제    -->
						<div class="mt-10">
							<span class="opacity-70 mr-4"> 초기 비밀번호는 주민번호 앞자리 입니다. </span>
							<!--<a href="javascript:;" id="kt_login_signup" class="text-white font-weight-bold">Sign Up</a> -->
						</div>
						<!--  삭제    -->
					</div>
					<!--end::Login Sign in form-->
					
					
					
					
					
					
					
					
					
					
					<!--begin::Login Sign up form-->
					<div class="login-signup">
						<div class="mb-20">
							<h3>Sign Up</h3>
							<p class="opacity-60">Enter your details to create your
								account</p>
						</div>
						<form class="form text-center" id="kt_login_signup_form">
							<div class="form-group">
								<input
									class="form-control h-auto text-white placeholder-white opacity-70 bg-dark-o-70 rounded-pill border-0 py-4 px-8"
									type="text" placeholder="Fullname" name="fullname" />
							</div>
							<div class="form-group">
								<input
									class="form-control h-auto text-white placeholder-white opacity-70 bg-dark-o-70 rounded-pill border-0 py-4 px-8"
									type="text" placeholder="Email" name="email" autocomplete="off" />
							</div>
							<div class="form-group">
								<input
									class="form-control h-auto text-white placeholder-white opacity-70 bg-dark-o-70 rounded-pill border-0 py-4 px-8"
									type="password" placeholder="Password" name="password" />
							</div>
							<div class="form-group">
								<input
									class="form-control h-auto text-white placeholder-white opacity-70 bg-dark-o-70 rounded-pill border-0 py-4 px-8"
									type="password" placeholder="Confirm Password" name="cpassword" />
							</div>
							<div class="form-group text-left px-8">
								<label
									class="checkbox checkbox-outline checkbox-white text-white m-0">
									<input type="checkbox" name="agree" />I Agree the <a href="#"
									class="text-white font-weight-bold">terms and conditions</a>. <span></span>
								</label>
								<div class="form-text text-muted text-center"></div>
							</div>
							<div class="form-group">
								<button id="kt_login_signup_submit"
									class="btn btn-pill btn-outline-white font-weight-bold opacity-90 px-15 py-3 m-2">Sign
									Up</button>
								<button id="kt_login_signup_cancel"
									class="btn btn-pill btn-outline-white font-weight-bold opacity-70 px-15 py-3 m-2">Cancel</button>
							</div>
						</form>
					</div>
					<!--end::Login Sign up form-->
					<!--begin::Login forgot password form-->
					<div class="login-forgot">
						<div class="mb-20">
							<h3>Forgotten Password ?</h3>
							<p class="opacity-60">Enter your email to reset your password</p>
						</div>
						<form class="form" id="kt_login_forgot_form">
							<div class="form-group mb-10">
								<input
									class="form-control h-auto text-white placeholder-white opacity-70 bg-dark-o-70 rounded-pill border-0 py-4 px-8"
									type="text" placeholder="Email" name="email" autocomplete="off" />
							</div>
							<div class="form-group">
								<button id="kt_login_forgot_submit"
									class="btn btn-pill btn-outline-white font-weight-bold opacity-90 px-15 py-3 m-2">Request</button>
								<button id="kt_login_forgot_cancel"
									class="btn btn-pill btn-outline-white font-weight-bold opacity-70 px-15 py-3 m-2">Cancel</button>
							</div>
						</form>
					</div>
					<!--end::Login forgot password form-->
				</div>
			</div>
		</div>
		<!--end::Login-->
	</div>
	<!--end::Main-->
	<script>
		var HOST_URL = "https://keenthemes.com/metronic/tools/preview";
	</script>
	<!--begin::Global Config(global config for global JS scripts)-->
	<script>
	
		var KTAppSettings = {
			"breakpoints" : {
				"sm" : 576,
				"md" : 768,
				"lg" : 992,
				"xl" : 1200,
				"xxl" : 1200
			},
			"colors" : {
				"theme" : {
					"base" : {
						"white" : "#ffffff",
						"primary" : "#3699FF",
						"secondary" : "#E5EAEE",
						"success" : "#1BC5BD",
						"info" : "#8950FC",
						"warning" : "#FFA800",
						"danger" : "#F64E60",
						"light" : "#F3F6F9",
						"dark" : "#212121"
					},
					"light" : {
						"white" : "#ffffff",
						"primary" : "#E1F0FF",
						"secondary" : "#ECF0F3",
						"success" : "#C9F7F5",
						"info" : "#EEE5FF",
						"warning" : "#FFF4DE",
						"danger" : "#FFE2E5",
						"light" : "#F3F6F9",
						"dark" : "#D6D6E0"
					},
					"inverse" : {
						"white" : "#ffffff",
						"primary" : "#ffffff",
						"secondary" : "#212121",
						"success" : "#ffffff",
						"info" : "#ffffff",
						"warning" : "#ffffff",
						"danger" : "#ffffff",
						"light" : "#464E5F",
						"dark" : "#ffffff"
					}
				},
				"gray" : {
					"gray-100" : "#F3F6F9",
					"gray-200" : "#ECF0F3",
					"gray-300" : "#E5EAEE",
					"gray-400" : "#D6D6E0",
					"gray-500" : "#B5B5C3",
					"gray-600" : "#80808F",
					"gray-700" : "#464E5F",
					"gray-800" : "#1B283F",
					"gray-900" : "#212121"
				}
			},
			"font-family" : "Poppins"
		};
	</script>
	<!--end::Global Config-->
	<!--begin::Global Theme Bundle(used by all pages)-->
	<script src="resources/assets/plugins/global/plugins.bundle.js"></script>
	<script
		src="resources/assets/plugins/custom/prismjs/prismjs.bundle.js"></script>
	<script src="resources/assets/js/scripts.bundle.js"></script>
	<!--end::Global Theme Bundle-->
	<!--begin::Page Scripts(used by this page)-->
<!--	<script
		src="resources/assets/js/pages/custom/login/login-general.js"></script>-->
		<!--  로그인 자바스크립트  -->
	<!--end::Page Scripts-->

</body>
<!--end::Body-->
</html>