<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<!--  혜정 사원 등록 페이지  -->
<!--  혜정 사원 등록 페이지  -->
<!--  혜정 사원 등록 페이지  -->

<meta charset="UTF-8">
<title>신규 사원 등록</title>
<link href="resources/assets/css/pages/wizard/wizard-4.css?v=7.0.4" rel="stylesheet" type="text/css" />
<style>
a{
font-size:12px !important;
}

</style>

<body>
<!--begin::Entry-->	

	<div class="d-flex flex-column-fluid">
	
		<!--begin::Container-->
		<div class="container">
			<!--begin::Card-->
			<div class="card card-custom card-transparent">
				<div class="card-body p-0">
					<!--begin::Wizard-->
					<div class="wizard wizard-4" id="kt_wizard"
						data-wizard-state="step-first" data-wizard-clickable="true">
						<!--begin::Wizard Nav-->
						
						
						<!-- 탭메뉴  탭메뉴  탭메뉴  탭메뉴  탭메뉴  탭메뉴  탭메뉴  탭메뉴  탭메뉴  탭메뉴  -->
						<div class="wizard-nav">
							<div class="wizard-steps">
								<div class="wizard-step" data-wizard-type="step"
									data-wizard-state="current">
									<div class="wizard-wrapper">
										<div class="wizard-number">1</div>
										<div class="wizard-label">
											<div class="wizard-title">인적사항</div>
											<div class="wizard-desc">User's Personal Information</div>
										</div>
									</div>
								</div>
								<div class="wizard-step" data-wizard-type="step">
									<div class="wizard-wrapper">
										<div class="wizard-number">2</div>
										<div class="wizard-label">
											<div class="wizard-title">학력정보</div>
											<div class="wizard-desc">User's Education Information</div>
										</div>
									</div>
								</div>
								<div class="wizard-step" data-wizard-type="step">
									<div class="wizard-wrapper">
										<div class="wizard-number">3</div>
										<div class="wizard-label">
											<div class="wizard-title">어학정보</div>
											<div class="wizard-desc">User's Language Information</div>
										</div>
									</div>
								</div>
								<div class="wizard-step" data-wizard-type="step">
									<div class="wizard-wrapper">
										<div class="wizard-number">4</div>
										<div class="wizard-label">
											<div class="wizard-title">자격증정보</div>
											<div class="wizard-desc">User's License Information</div>
										</div>
									</div>
								</div>


							</div>
						</div>
						<!-- 탭메뉴  종료  탭메뉴   종료    탭메뉴   종료   탭메뉴  종료  탭메뉴  종료  탭메뉴   종료 탭메뉴   종료  탭메뉴   종료  탭메뉴   종료 탭메뉴  -->
						<!--end::Wizard Nav-->
						<!--begin::Card-->

                       <form class="form" id="kt_form" action="updateProcess.net" method="post">

						<!--  STEP 시작  STEP 시작  STEP 시작  STEP 시작  STEP 시작  STEP 시작 -->
						<div class="card card-custom card-shadowless rounded-top-0">
							<!--begin::Body-->
							<div class="card-body p-0">
								<div
									class="row justify-content-center py-8 px-8 py-lg-15 px-lg-10">
									<div class="col-xl-12 col-xxl-10">
										<!--begin::Wizard Form-->
										
											<div class="row justify-content-center"> 
												<div class="col-xl-9">
													<!--begin::Wizard Step 1-->
												
												
												
												
												
					<!--  Step 1 사원등록 Step 1 사원등록 Step 1 사원등록 Step 1 사원등록  Step 1 사원등록 Step 1 사원등록 Step 1 사원등록 Step 1 사원등록 Step 1 사원등록  Step 1 사원등록-->
													<div class="my-5 step" data-wizard-type="step-content"
														data-wizard-state="current">
														<h3 class="text-dark font-weight-bold mb-10"
															font-weight="bold";>사원 정보 수정<a style="color:red">   * 일부항목만 수정이 가능합니다. </a> </h3>
														<!--begin::Group-->
														<!-- <div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label text-left">
																사진 </label>
															<div class="col-lg-9 col-xl-9">
																<div class="image-input image-input-outline"
																	id="kt_user_add_avatar">
																	<div class="image-input-wrapper"
																		style="background-image: url(resources/assets/media/users/LEE.PNG)"></div>
																	<label
																		class="btn btn-xs btn-icon btn-circle btn-white btn-hover-text-primary btn-shadow"
																		data-action="change" data-toggle="tooltip" title=""
																		data-original-title="Change avatar"> <i
																		class="fa fa-pen icon-sm text-muted"></i> 
																		
																		<input type="file" id="upfile" name="profile_avatar" accept=".png, .jpg, .jpeg" /> 
																		
																		<input type="hidden" name="profile_avatar_remove" />
																		<input type="file" id="upfile" name="uploadfile">
																		
																	</label> <span
																		class="btn btn-xs btn-icon btn-circle btn-white btn-hover-text-primary btn-shadow"
																		data-action="cancel" data-toggle="tooltip"
																		title="Cancel avatar"> <i
																		class="ki ki-bold-close icon-xs text-muted"></i>
																	</span>
																</div>
															</div>
														</div> -->
														<!--end::Group-->
														<!--begin::Group-->
														<!--  사원번호  -->
														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">
																사원번호 </label>
															<div class="col-lg-9 col-xl-9">
																<input
																	class="form-control form-control-solid form-control-lg"
																	name="M_CODE" id="M_CODE" type="text" placeholder="${info.m_CODE}" 
																	readonly /><span class="form-text text-muted">참고 : 사원번호는 수정이 불가능합니다. 
																	</span>
															</div>
														</div>
														<!--  비밀번호  -->
														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">비밀번호<a style="color:red"> * </a></label>
															<div class="col-lg-9 col-xl-9">
																<input
																	class="form-control form-control-solid form-control-lg"
																	name="M_PASS" type="text" id="password" value="${info.m_PASS}" /> <span
																	class="form-text text-muted"> 참고 : 초기 비밀번호는 생년월일로 설정해주세요. </span>
															</div>
														</div>
														<!--end::Group-->
														<!--begin::Group-->
														
														
														
														
														
														
								
														

														<!-- <div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">부서코드</label>
																<div class="col-lg-9 col-xl-9">
																	<div class="dropdown">
    																	<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
       																		&nbsp;&nbsp;&nbsp;선택해주세요.&nbsp;&nbsp;&nbsp;&nbsp;</button>
  													  <div class="dropdown-menu" >
      														  <a class="dropdown-item" href="#" value="A1">A1   총무</a>
        													  <a class="dropdown-item" href="#" value="A2">A2   재무</a>
     													      <a class="dropdown-item" href="#" value="A3">A3   인사</a>
     													      <a class="dropdown-item" href="#" value="B1">B1   경영지원</a>
     													      <a class="dropdown-item" href="#" value="B2">B2  S/W지원</a>
     													      <a class="dropdown-item" href="#" value="B3">B3   기술지원</a>
     													      <a class="dropdown-item" href="#" value="C1">C1   영업1팀</a>
     													      <a class="dropdown-item" href="#" value="C2">C2   영업2팀</a>
     													      <a class="dropdown-item" href="#" value="Q">Q  임원</a>
   															 </div>
															</div>
															<span
																	class="form-text text-muted">참고 : 기타 부서의 경우 A1으로 선택해주세요.</span>
															</div>
														</div> -->
														
														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">부서코드</label>
																<div class="col-lg-9 col-xl-9">
																	<label class="radio radio-rounded radio-info">															
																<input type="radio" name="M_PART_C" id="M_PART_C" value="${info.m_PART_C}" />A1 총무 <span></span>
																	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> 
																
																<label class="radio radio-rounded radio-info">
																<input type="radio" name="M_PART_C" id="M_PART_C" />A2   재무<span></span>
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> 
																
																<label class="radio radio-rounded radio-info">
																<input type="radio" name="M_PART_C" id="M_PART_C"/>A3   인사<span></span>
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> 
																
																<label class="radio radio-rounded radio-info">
																<input type="radio" name="M_PART_C" id="M_PART_C"/>B1   경영지원<span></span>
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> 
																
																<label class="radio radio-rounded radio-info">
																<input type="radio" name="M_PART_C" id="M_PART_C" />B2  S/W지원<span></span>
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> 
																
																<label class="radio radio-rounded radio-info">
																<input type="radio" name="M_PART_C" id="M_PART_C" />B3   기술지원<span></span>
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
																 
																<label class="radio radio-rounded radio-info">
																<input type="radio" name="M_PART_C" id="M_PART_C" />C1   영업1팀<span></span>
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> 
																
																<label class="radio radio-rounded radio-info">
																<input type="radio" name="M_PART_C" id="M_PART_C" />C2   영업2팀<span></span>
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
																
																<label class="radio radio-rounded radio-info">
																<input type="radio" name="M_PART_C" id="M_PART_C" />Q  임원<span></span>
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> 
																
																
																
																</label><span
																	class="form-text text-muted">
																	참고 : 기타 부서의 경우 A1으로 선택해주세요. </span>
															</div>
														</div>
														
														
														
														
														
														
													<!-- 직급코드 -->
														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">
																직급코드 </label>
															<div class="col-lg-9 col-xl-9">
																<label class="radio radio-rounded radio-info">															
																<input type="radio" name="M_LEVEL" id="M_LEVEL" checked="checked" value="1" /> Level 1 <span></span>
																	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> 
																
																<label class="radio radio-rounded radio-info">
																<input type="radio" name="M_LEVEL" value="2" /> Level 2 <span></span>
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> 
																
																<label class="radio radio-rounded radio-info">
																<input type="radio" name="M_LEVEL" value="3" /> Level 3 <span></span>
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> 
																
																<label class="radio radio-rounded radio-info">
																<input type="radio" name="M_LEVEL" value="4" /> Level 4 <span></span>
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> 
																
																<label class="radio radio-rounded radio-info">
																<input type="radio" name="M_LEVEL" value="5"/> Level 5 <span></span>
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> 
																
																
																
																</label><span
																	class="form-text text-muted">
																	참고 : 사원(Level-1) , 대리(Level-2), 과장(Level-3), 차장(Level-4), 임원(Level-5) </span>
															</div>
														</div>
														
														<!-- 직급코드  -->
					


														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">
																성명<a style="color:red"> *</a> </label>
															<div class="col-lg-9 col-xl-9">
																<input
																	class="form-control form-control-solid form-control-lg"
																	name="M_NAME" type="text" id="M_NAME"  value="${info.m_NAME}" readonly/>
															</div>
														</div>


														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">
																생년월일 </label>
															<div class="col-lg-4 col-md-9 col-sm-12">
																<div class="input-group date">
																	<input type="text" class="form-control"
																		placeholder="${info.m_BIRTH}" name="M_BIRTH" readonly/>
																	<div class="input-group-append">
																		<span class="input-group-text"> <i
																			class="la la-calendar"></i>
																		</span>
																	</div>
																</div>
															</div>
														</div>

														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">
																성별 </label>
															<div class="col-lg-9 col-xl-9">
																<label class="radio radio-rounded radio-info"> <input
																	type="radio" name="M_GENDER" id="M_GENDER" checked="checked" value="남" /> 남 <span></span>
																	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																</label> <label class="radio radio-rounded radio-info">
																	<input type="radio" id="M_GENDER" name="M_GENDER"  value="여"/> 여 <span></span>
																</label>
															</div>
														</div>


														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">
																결혼여부 </label>
															<div class="col-lg-9 col-xl-9">
																<label class="radio radio-rounded radio-info"> <input
																	type="radio" name="M_MARRIAGE" id="M_MARRIAGE" value="Y" /> 기혼 <span></span>
																	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																
																</label> <label class="radio radio-rounded radio-info">
																	<input type="radio" name="M_MARRIAGE" id="M_MARRIAGE" value="N" checked="checked" /> 미혼 <span></span>
																</label>
															</div>
														</div>


														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">
																군필여부 </label>
															<div class="col-lg-9 col-xl-9">
																<label class="radio radio-rounded radio-info"> <input
																	type="radio" name="M_ARMY" id="M_ARMY" value="Y" Checked="checked" /> 군필 <span></span>
																	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																</label> <label class="radio radio-rounded radio-info">
																	<input type="radio" name="M_ARMY" id="M_ARMY" value="N" /> 면제 <span></span>
																	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																</label> <label class="radio radio-rounded radio-info">
																	<input type="radio" name="M_ARMY" id="M_ARMY" value="NA"/> 해당없음 <span></span>
																</label>
															</div>
														</div>











														<!--begin::Group-->
														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">
																핸드폰<a style="color:red"> *</a> </label>
															<div class="col-lg-9 col-xl-9">
																<div
																	class="input-group input-group-solid input-group-lg">
																	<div class="input-group-prepend">
																		<span class="input-group-text"> <i
																			class="la la-phone"></i>
																		</span>
																	</div>
																	<input type="text"
																		class="form-control form-control-solid form-control-lg"
																		name="M_MOBILE_TEL" id="M_MOBILE_TEL" value="${info.m_MOBILE_TEL}" />
																</div>
																<span class="form-text text-muted">참고 : 해당 양식으로 작성해주세요.
																	(ex: 010-1234-5678)</span>
															</div>
														</div>


														<div class="form-group row">
															<label class="col-3"> 이메일 (Email)<a style="color:red"> *</a> </label>
															<div class="col-9">
																<div class="input-group input-group-solid">
																	<div class="input-group-prepend">
																		<span class="input-group-text"><i
																			class="la la-at"></i></span>
																	</div>
																	<input type="text"
																		class="form-control form-control-solid"
																		name="M_EMAIL" id="M_EMAIL"  value="${info.m_EMAIL}" />
																</div><span class="form-text text-muted">참고 : 해당 양식으로 작성해주세요.
																	(ex: sample@Ezwork.com)</span>
															</div>
														</div>

														<!-- <div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">
																자택연락처 </label>
															<div class="col-lg-9 col-xl-9">
																<div
																	class="input-group input-group-solid input-group-lg">
																	<div class="input-group-prepend">
																		<span class="input-group-text"> <i
																			class="la la-phone"></i>
																		</span>
																	</div>
																	<input type="text"
																		class="form-control form-control-solid form-control-lg"
																		name="homephone"
																		placeholder="02-123-4567" id="M_TEL" />
																</div>
																<span class="form-text text-muted"> 참고 : 생략
																	가능합니다. 입력시 해당 양식에 맞게 작성해주세요. (ex: 02-123-4567)</span>
															</div>
														</div> -->




														<!--end::Group-->
														<!--begin::Group-->


														<!--  주소 API  주소 API  주소 API  주소 API    주소 API  주소 API  주소 API  주소 API   주소 API  주소 API  주소 API  주소 API -->

														<!--  우편번호  -->
														<div class="row">
															<div class="col-xl-6">
																<!--begin::Group-->
																<div class="form-group">
																	<label>우편번호</label> <input type="text"
																		class="form-control form-control-solid form-control-lg"
																		name="M_POSTCODE" placeholder="우편번호"
																		id="sample6_postcode"
																		onclick="sample6_execDaumPostcode()" value="${info.m_POSTCODE}"/> <span
																		class="form-text text-muted"> 참고 : 버튼을 눌러 검색해주세요.</span>
																</div>
															</div>

															<div class="col-xl-6">
																<!--begin::Group-->
																<div class="form-group">
																	<label>&nbsp;</label> <br> <input type="button"
																		class="btn btn-outline-info"
																		onclick="sample6_execDaumPostcode()" value="우편번호 찾기" />


																</div>
															</div>
														</div>


														<div class="form-group">
															<label> 주소 </label> <input type="text"
																class="form-control form-control-solid form-control-lg"
																name="M_ADDRESS" value="${info.m_ADDRESS}"
																 id="M_ADDRESS" /> 
														</div>




														<!--  상세주소 아래 두칸  -->
														<div class="row">
															<div class="col-xl-6">
																<!--begin::Group-->
																<div class="form-group">
																	<label> 상세주소 </label> <input type="text"
																		class="form-control form-control-solid form-control-lg"
																		name="M_ADDRESS2" 
																		id="sample6_detailAddress" value="${info.m_ADDRESS2}"/>

																</div>
															</div>
															<!--end::Group-->
															<!--begin::Group-->
															<div class="col-xl-6">
																<div class="form-group">
																	<label>상세주소 2 </label> <input type="text"
																		class="form-control form-control-solid form-control-lg"
																		name="M_ADDRESS3"
																		id="sample6_extraAddress" placeholder=" "/>
																</div>
															</div>
															<!--end::Group-->
														</div>
													</div>

													<!--  Step 1 사원등록 종료 Step 1 사원등록 종료 Step 1 사원등록 종료 Step 1 사원등록 종료 Step 1 사원등록 종료-->

													<!--  END  주소 API  주소 API  주소 API  END  주소 API  주소 API  주소 API  주소 API   주소 API END  주소 API  주소 API  주소 API  END-->


													<!--end::Wizard Step 1-->
													<!--begin::Wizard Step 2-->
													
													
												
												
												<div class="my-5 step" data-wizard-type="step-content">
														<h5 class="mb-10 font-weight-bold text-dark">학력정보<a style="color:#BF00FF"> * 해당 정보란은 생략가능합니다. </a></h5>
														<!--begin::Group-->
														


														<div class="row">
															<div class="col-xl-6">
																<!--begin::Group-->
																<div class="form-group">
																	<label> 학교명 </label> <input type="text"
																		class="form-control form-control-solid form-control-lg"
																		name="SC_NAME" value="${info.SC_NAME}"
																		id="SC_NAME" readonly /><span
																	class="form-text text-muted">
																	참고 : OO대학, OO대학교 </span>

																</div>
															</div>
															<!--end::Group-->
															<!--begin::Group-->
															<div class="col-xl-6">
																<div class="form-group">
																	<label> 전공 </label> <input type="text"
																		class="form-control form-control-solid form-control-lg"
																		name="SC_MAJOR" value="${info.SC_MAJOR}" id="SC_MAJOR" readonly/>
																		<span
																	class="form-text text-muted">
																	참고 : 경제금융학과 등 </span>
																</div>
															</div>
															<!--end::Group-->
														</div>




														<div class="row">
															<div class="col-xl-6">
																<!--begin::Group-->
																<div class="form-group">
																	<label> 학위 </label> <input type="text"
																		class="form-control form-control-solid form-control-lg"
																		name="SC_DEGREE" value="${info.SC_DEGREE}" 
																		id="SC_DEGREE" readonly/><span
																	class="form-text text-muted">
																	참고 : 학사, 석사, 전문석사, 박사 </span>

																</div>
															</div>
															<!--end::Group-->
															<!--begin::Group-->
															<div class="col-xl-6">
																<div class="form-group">
																	<label> 소재지 </label> <input type="text"
																		class="form-control form-control-solid form-control-lg"
																		name="SC_ADDRESS" value="${info.SC_ADDRESS}"  id="SC_ADDRESS" readonly/>
																		<span
																	class="form-text text-muted">
																	참고 : 서울시 종로구, 전라북도 전주시 완산구<br>(해당 소재지의 시,구까지 입력해주세요.) </span>
																</div>
															</div>
															<!--end::Group-->
														</div>



														<div class="form-group row">
															<label class="col-xl-6 col-form-label"> 졸업일자 </label>
															<div class="col-xl-6">
																<div class="input-group date">
																	<input type="text" class="form-control" readonly
																		value="${info.SC_GRAD_DAY}" name="SC_GRAD_DAY" id=kt_datepicker_3" readonly/>
																	<div class="input-group-append">
																		<span class="input-group-text"> <i
																			class="la la-calendar"></i>
																		</span>
																	</div>
																</div>
															</div>
														</div>








													</div>

													<!-- Step2 발령정보 END  Step2 발령정보 END  Step2 발령정보 END Step2  발령정보 END  Step2발령정보 END  -->

													<!--end::Wizard Step 2-->


													<!--begin::Wizard Step 3-->
													<!--  step 3 시작  step 3 시작  step 3 시작 step 3 시작 step 3 시작 step 3 시작 -->
														<div class="my-5 step" data-wizard-type="step-content">
														<h5 class="mb-10 font-weight-bold text-dark">어학정보<a style="color:#BF00FF"> * 해당 정보란은 생략가능합니다. </a></h5>
														<!--begin::Group-->


														<div class="row">
															<div class="col-xl-6">
																<!--begin::Group-->
																<div class="form-group">
																	<label> 외국어명 </label> <input type="text"
																		class="form-control form-control-solid form-control-lg"
																		name="LG_NAME" value="${info.LG_NAME}"
																		id="LG_NAME" readonly/>
																		<span
																	class="form-text text-muted">
																	참고 : 영어, 일본어, 이탈리아어 등 </span>

																</div>
															</div>
															<!--end::Group-->
															<!--begin::Group-->
															<div class="col-xl-6">
																<div class="form-group">
																	<label> 시험명 </label> <input type="text"
																		class="form-control form-control-solid form-control-lg"
																		name="LG_TEST" value="${info.LG_TEST}" id="LG_TEST" readonly/>
																		<span
																	class="form-text text-muted">
																	참고 : TOEIC, TOEFL, IELTS 등 </span>
																</div>
															</div>
															<!--end::Group-->
														</div>




														<div class="row">
															<div class="col-xl-6">
																<!--begin::Group-->
																<div class="form-group">
																	<label> 시험점수 </label> <input type="text"
																		class="form-control form-control-solid form-control-lg"
																		name="LG_GRADE" value="${info.LG_TEST}"
																		id="LG_GRADE" readonly/>

																</div>
															</div>
															<!--end::Group-->
															<!--begin::Group-->
															<div class="col-xl-6">
																<div class="form-group">
																	<label> 발급기관 </label> <input type="text"
																		class="form-control form-control-solid form-control-lg"
																		name="LG_ORGAN" value="${info.LG_ORGAN}" id="LG_ORGAN" readonly/>
																		<span
																	class="form-text text-muted">
																	참고 : 한국TOEIC위원회, 일본국제교육지원협회 등 </span>
																</div>
															</div>
															<!--end::Group-->
														</div>

														<div class="form-group row">
															<label class="col-xl-6 col-form-label"> 발급일자 </label>
															<div class="col-xl-6">
																<div class="input-group date">
																	<input type="text" class="form-control" readonly
																		value="${info.LG_DATE}" name="LG_DATE"/>
																	<div class="input-group-append">
																		<span class="input-group-text"> <i
																			class="la la-calendar"></i>
																		</span>
																	</div>
																</div>
															</div>
														</div>








													</div>


													<!-- step3 학력정보 END  step3  학력정보 END  step3  학력정보 END  step3  학력정보 END  step3  학력정보 END  -->

													<!--end::Wizard Step 3-->
													<!--begin::Wizard Step 4-->
													<!--  step 4 자격증정보 시작  step 4 자격증정보  step 4 자격증정보 step 4 자격증정보 -->
													
													
														<div class="my-5 step" data-wizard-type="step-content">
														<h5 class="mb-10 font-weight-bold text-dark">자격증정보<a style="color:#BF00FF"> * 해당 정보란은 생략가능합니다. </a></h5>
														<!--begin::Group-->


														<div class="row">
															<div class="col-xl-6">
																<!--begin::Group-->
																<div class="form-group">
																	<label> 자격증명 </label> <input type="text"
																		class="form-control form-control-solid form-control-lg"
																		name="LI_NAME" value="${info.LI_NAME}" 
																		id="LI_NAME" readonly/><span
																	class="form-text text-muted">
																	참고 : 정보처리기사, 컴퓨터활용능력 1급 등</span>

																</div>
															</div>
															<!--end::Group-->
															<!--begin::Group-->
															<div class="col-xl-6">
																<div class="form-group">
																	<label> 발급기관 </label> <input type="text"
																		class="form-control form-control-solid form-control-lg"
																		name="LI_ORGAN" value="${info.LI_ORGAN}"  id="LI_ORGAN" readonly/>
																		<span
																	class="form-text text-muted">
																	참고 : 대한상공회의소, 한국산업인력공단 등</span>
																</div>
															</div>
															<!--end::Group-->
														</div>
														
														<div class="form-group row">
															<label class="col-xl-6 col-form-label"> 발급일자 </label>
															<div class="col-xl-6">
																<div class="input-group date">
																	<input type="text" class="form-control" readonly
																		value="${info.LI_DATE}" name="LI_DATE" />
																	<div class="input-group-append">
																		<span class="input-group-text"> <i
																			class="la la-calendar"></i>
																		</span>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<!--  test -->
													
													


													<!--  test 블럭  -->
													
													<!-- step4 어학정보 END  step4 어학정보 END step4 어학정보 END step4 어학정보 END-->

													<div
														class="d-flex justify-content-between border-top pt-10 mt-15">
														<div class="mr-2">
															<button type="button" id="prev-step"
																class="btn btn-secondary font-weight-bolder px-9 py-4"
																data-wizard-type="action-prev">이전</button>
														</div>
														<div>
															<button type="submit" 
																class="btn btn-success font-weight-bolder px-9 py-4"
																>저장</button>
															
															<button type="button" id="next-step"
																class="btn btn-info font-weight-bolder px-9 py-4"
																data-wizard-type="action-next">다음</button>
														</div>
													</div>
													
													

													<!--end::Wizard Actions-->
												</div>
											</div>
										
										<!--end::Wizard Form-->
									</div>
								</div>
							</div>
							<!--end::Body-->
							
						</div>
						
						<!--end::Card-->
						</form>
					</div>
					
					<!--end::Wizard-->
				</div>
			</div>
			<!--end::Card-->
		</div>
		<!--end::Container-->
	</div>


	<!--end::Entry-->
	<!--begin::Global Theme Bundle(used by all pages)-->
	<script src="resources/js/jquery-3.5.0.js"></script>
	<script src="resources/js/join.js"></script>
	<script src="resources/assets/plugins/global/plugins.bundle.js?v=7.0.4"></script>
	<script
		src="resources/assets/plugins/custom/prismjs/prismjs.bundle.js?v=7.0.4"></script>
	<script src="resources/assets/js/scripts.bundle.js?v=7.0.4"></script>
	<!--end::Global Theme Bundle-->
	<!--begin::Page Scripts(used by this page)-->

	<!-- 사원등록 js 추가 -->
  	<script src="resources/assets/js/pages/custom/user/add-user.js?v=7.0.4"></script>
	<!-- 달력 js 추가 -->
	<script
		src="resources/assets/js/pages/crud/forms/widgets/bootstrap-datepicker.js?v=7.0.4"></script>
	<!--  주소, 우편번호 api 추가 -->
	<script
		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>