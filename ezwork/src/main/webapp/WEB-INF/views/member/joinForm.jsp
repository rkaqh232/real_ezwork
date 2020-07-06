<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<!--  혜정 사원 등록 페이지  -->
<!--  혜정 사원 등록 페이지  -->
<!--  혜정 사원 등록 페이지  -->

<meta charset="UTF-8">
<title>신규 사원 등록</title>
<link href="resources/assets/css/pages/wizard/wizard-4.css?v=7.0.4"
	rel="stylesheet" type="text/css" />
<script src="resources/js/jquery-3.5.0.js"></script>
<script src="resources/js/join.js"></script>
</head>
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
											<div class="wizard-title">발령정보</div>
											<div class="wizard-desc">User's Personnel Appointment</div>
										</div>
									</div>
								</div>
								<div class="wizard-step" data-wizard-type="step">
									<div class="wizard-wrapper">
										<div class="wizard-number">3</div>
										<div class="wizard-label">
											<div class="wizard-title">학력정보</div>
											<div class="wizard-desc">User's Education Information</div>
										</div>
									</div>
								</div>
								<div class="wizard-step" data-wizard-type="step">
									<div class="wizard-wrapper">
										<div class="wizard-number">4</div>
										<div class="wizard-label">
											<div class="wizard-title">어학정보</div>
											<div class="wizard-desc">User's Language Information</div>
										</div>
									</div>
								</div>
								<!-- 	<div class="wizard-step" data-wizard-type="step">
														<div class="wizard-wrapper">
															<div class="wizard-number">5</div>
															<div class="wizard-label">
																<div class="wizard-title">자격증</div>
																<div class="wizard-desc">Review and Submit</div>
															</div>
														</div>
													</div> -->



							</div>
						</div>
						<!-- 탭메뉴  종료  탭메뉴   종료    탭메뉴   종료   탭메뉴  종료  탭메뉴  종료  탭메뉴   종료 탭메뉴   종료  탭메뉴   종료  탭메뉴   종료 탭메뉴  -->
						<!--end::Wizard Nav-->
						<!--begin::Card-->

						<!--  STEP 시작  STEP 시작  STEP 시작  STEP 시작  STEP 시작  STEP 시작 -->
						<div class="card card-custom card-shadowless rounded-top-0">
							<!--begin::Body-->
							<div class="card-body p-0">
								<div
									class="row justify-content-center py-8 px-8 py-lg-15 px-lg-10">
									<div class="col-xl-12 col-xxl-10">
										<!--begin::Wizard Form-->
										<form class="form" id="kt_form">
											<div class="row justify-content-center">
												<div class="col-xl-9">
													<!--begin::Wizard Step 1-->
													<!--  Step 1 사원등록 Step 1 사원등록 Step 1 사원등록 Step 1 사원등록  Step 1 사원등록-->
													<div class="my-5 step" data-wizard-type="step-content"
														data-wizard-state="current">
														<h3 class="text-dark font-weight-bold mb-10"
															font-weight="bold";>사원 등록</h3>
														<!--begin::Group-->
														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label text-left">
																사진 </label>
															<div class="col-lg-9 col-xl-9">
																<div class="image-input image-input-outline"
																	id="kt_user_add_avatar">
																	<div class="image-input-wrapper"
																		style="background-image: url(resources/assets/media/users/mari2.png)"></div>
																	<label
																		class="btn btn-xs btn-icon btn-circle btn-white btn-hover-text-primary btn-shadow"
																		data-action="change" data-toggle="tooltip" title=""
																		data-original-title="Change avatar"> <i
																		class="fa fa-pen icon-sm text-muted"></i> <input
																		type="file" name="profile_avatar"
																		accept=".png, .jpg, .jpeg" /> <input type="hidden"
																		name="profile_avatar_remove" />
																	</label> <span
																		class="btn btn-xs btn-icon btn-circle btn-white btn-hover-text-primary btn-shadow"
																		data-action="cancel" data-toggle="tooltip"
																		title="Cancel avatar"> <i
																		class="ki ki-bold-close icon-xs text-muted"></i>
																	</span>
																</div>
															</div>
														</div>
														<!--end::Group-->
														<!--begin::Group-->
														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">
																사원번호 </label>
															<div class="col-lg-9 col-xl-9">
																<input
																	class="form-control form-control-solid form-control-lg"
																	name="firstname" id="M_CODE" type="text" value="" />
															</div>
														</div>
														<!--end::Group-->
														<!--begin::Group-->
														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">계약코드</label>
															<div class="col-lg-9 col-xl-9">
																<input
																	class="form-control form-control-solid form-control-lg"
																	name="lastname" id="M_WORK_C" type="text" value="" /> <span
																	class="form-text text-muted"> 참고 계약코드 (계약직 :
																	100, 정규직 : 200)</span>
															</div>
														</div>
														<!--end::Group-->

														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">부서코드</label>
															<div class="col-lg-9 col-xl-9">
																<input
																	class="form-control form-control-solid form-control-lg"
																	name="lastname" id="M_PART_C" type="text" value="" />
															</div>
														</div>


														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">직급코드</label>
															<div class="col-lg-9 col-xl-9">
																<input
																	class="form-control form-control-solid form-control-lg"
																	name="lastname" type="text" id="M_LEVEL"  value="" /> <span
																	class="form-text text-muted">Enter valid US
																	phone number(e.g: 5678967456).</span>
															</div>
														</div>
														
														
														
														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">비밀번호</label>
															<div class="col-lg-9 col-xl-9">
																<input
																	class="form-control form-control-solid form-control-lg"
																	name="lastname" type="text" id="M_PASS" value="" /> <span
																	class="form-text text-muted">Enter valid US
																	phone number(e.g: 5678967456).</span>
															</div>
														</div>



														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">
																성명 </label>
															<div class="col-lg-9 col-xl-9">
																<input
																	class="form-control form-control-solid form-control-lg"
																	name="lastname" type="text" id="M_NAME"  value="" />
															</div>
														</div>



														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">
																영문성명 </label>
															<div class="col-lg-9 col-xl-9">
																<input
																	class="form-control form-control-solid form-control-lg"
																	name="lastname" type="text" id="M_NAME_EN" value="" />
															</div>
														</div>


														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">
																주민등록번호 </label>
															<div class="col-lg-9 col-xl-9">
																<input
																	class="form-control form-control-solid form-control-lg"
																	name="lastname" type="text" id="M_PRI_NUMBER" value="" />
															</div>
														</div>





														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">
																생년월일 </label>
															<div class="col-lg-4 col-md-9 col-sm-12">
																<div class="input-group date">
																	<input type="text" class="form-control" readonly
																		value="05/20/2017" id="M_BIRTH" />
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
																	type="radio" name="gender" id="M_GENDER" checked="checked" /> 남 <span></span>
																	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																</label> <label class="radio radio-rounded radio-info">
																	<input type="radio" id="M_GENDER" name="gender" /> 여 <span></span>
																</label>
															</div>
														</div>


														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">
																결혼여부 </label>
															<div class="col-lg-9 col-xl-9">
																<label class="radio radio-rounded radio-info"> <input
																	type="radio" name="marry" id="M_MARRIAGE" checked="checked" /> 기혼 <span></span>
																	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																</label> <label class="radio radio-rounded radio-info">
																	<input type="radio" name="marry" /> 미혼 <span></span>
																</label>
															</div>
														</div>


														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">
																군필여부 </label>
															<div class="col-lg-9 col-xl-9">
																<label class="radio radio-rounded radio-info"> <input
																	type="radio" name="army" id="M_ARMY" checked="checked" /> 군필 <span></span>
																	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																</label> <label class="radio radio-rounded radio-info">
																	<input type="radio" name="army" id="M_ARMY" /> 면제 <span></span>
																	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																</label> <label class="radio radio-rounded radio-info">
																	<input type="radio" name="army" id="M_ARMY" /> 해당없음 <span></span>
																</label>
															</div>
														</div>











														<!--begin::Group-->
														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">
																핸드폰 </label>
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
																		name="phone" id="M_MOBILE_TEL" value="5678967456" placeholder="Phone" />
																</div>
																<span class="form-text text-muted">Enter valid US
																	phone number(e.g: 5678967456).</span>
															</div>
														</div>


														<div class="form-group row">
															<label class="col-3"> 이메일 (Email) </label>
															<div class="col-9">
																<div class="input-group input-group-solid">
																	<div class="input-group-prepend">
																		<span class="input-group-text"><i
																			class="la la-at"></i></span>
																	</div>
																	<input type="text"
																		class="form-control form-control-solid"
																		value="EzWork@ezwork.com" id="M_EMAIL" placeholder="Email" />
																</div>
															</div>
														</div>

														<div class="form-group row">
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
																		name="phone" value="5678967456"
																		placeholder="HomePhone" id="M_TEL" />
																</div>
																<span class="form-text text-muted"> 참고 : 생략
																	가능합니다. </span>
															</div>
														</div>




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
																		name="postcode" placeholder="Postcode"
																		id="sample6_postcode"
																		onclick="sample6_execDaumPostcode()" /> <span
																		class="form-text text-muted"> 버튼을 눌러 검색해주세요.</span>
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
																name="address1" placeholder="Address Line 1"
																value="서울시 종로구 KH" id="M_ADDRESS" /> <span
																class="form-text text-muted"> 주소를 검색해주세요. </span>
														</div>




														<!--  상세주소 아래 두칸  -->
														<div class="row">
															<div class="col-xl-6">
																<!--begin::Group-->
																<div class="form-group">
																	<label> 상세주소 </label> <input type="text"
																		class="form-control form-control-solid form-control-lg"
																		name="address2" placeholder="상세주소"
																		id="sample6_detailAddress" />

																</div>
															</div>
															<!--end::Group-->
															<!--begin::Group-->
															<div class="col-xl-6">
																<div class="form-group">
																	<label>상세주소 2 </label> <input type="text"
																		class="form-control form-control-solid form-control-lg"
																		name="address3" placeholder="참고항목"
																		id="sample6_extraAddress" />
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
														<h5 class="text-dark font-weight-bold mb-10 mt-5">
															발령정보</h5>
														<!--begin::Group-->

														<div class="form-group row">
															<label class="col-xl-6 col-form-label"> 발령일자 </label>
															<div class="col-xl-6">
																<div class="input-group date">
																	<input type="text" class="form-control" readonly
																		value="05/20/2017" id="kt_datepicker_3" />
																	<div class="input-group-append">
																		<span class="input-group-text"> <i
																			class="la la-calendar"></i>
																		</span>
																	</div>
																</div>
															</div>
														</div>



														<div class="row">




															<div class="col-xl-6">
																<!--begin::Group-->
																<div class="form-group">
																	<label> 발령구분 </label> <input type="text"
																		class="form-control form-control-solid form-control-lg"
																		name="date" placeholder="발령구분" id="ap_date" />

																</div>
															</div>





															<!--end::Group-->
															<!--begin::Group-->
															<div class="col-xl-6">
																<div class="form-group">
																	<label>발령직급 </label> <input type="text"
																		class="form-control form-control-solid form-control-lg"
																		name="level" placeholder="직급을 입력하세요." id="ap_level" />
																</div>
															</div>
															<!--end::Group-->
														</div>


														<div class="row">
															<div class="col-xl-6">
																<!--begin::Group-->
																<div class="form-group">
																	<label> 발령내용 </label> <input type="text"
																		class="form-control form-control-solid form-control-lg"
																		name="content" placeholder="내용을 입력하세요."
																		id="ap_content" />

																</div>
															</div>
															<!--end::Group-->
															<!--begin::Group-->
															<div class="col-xl-6">
																<div class="form-group">
																	<label> 기타사항 </label> <input type="text"
																		class="form-control form-control-solid form-control-lg"
																		name="etc" placeholder="기타사항을 입력하세요." id="a_etc" />
																</div>
															</div>
															<!--end::Group-->
														</div>







														<!--end::Group-->
													</div>

													<!-- Step2 발령정보 END  Step2 발령정보 END  Step2 발령정보 END Step2  발령정보 END  Step2발령정보 END  -->

													<!--end::Wizard Step 2-->


													<!--begin::Wizard Step 3-->
													<!--  step 3 시작  step 3 시작  step 3 시작 step 3 시작 step 3 시작 step 3 시작 -->
													<div class="my-5 step" data-wizard-type="step-content">
														<h5 class="mb-10 font-weight-bold text-dark">학력정보</h5>
														<!--begin::Group-->


														<div class="row">
															<div class="col-xl-6">
																<!--begin::Group-->
																<div class="form-group">
																	<label> 학교명 </label> <input type="text"
																		class="form-control form-control-solid form-control-lg"
																		name="content" placeholder="내용을 입력하세요."
																		id="ap_content" />

																</div>
															</div>
															<!--end::Group-->
															<!--begin::Group-->
															<div class="col-xl-6">
																<div class="form-group">
																	<label> 전공 </label> <input type="text"
																		class="form-control form-control-solid form-control-lg"
																		name="etc" placeholder="기타사항을 입력하세요." id="a_etc" />
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
																		name="content" placeholder="내용을 입력하세요."
																		id="ap_content" />

																</div>
															</div>
															<!--end::Group-->
															<!--begin::Group-->
															<div class="col-xl-6">
																<div class="form-group">
																	<label> 소재지 </label> <input type="text"
																		class="form-control form-control-solid form-control-lg"
																		name="etc" placeholder="기타사항을 입력하세요." id="a_etc" />
																</div>
															</div>
															<!--end::Group-->
														</div>



														<div class="form-group row">
															<label class="col-xl-6 col-form-label"> 졸업일자 </label>
															<div class="col-xl-6">
																<div class="input-group date">
																	<input type="text" class="form-control" readonly
																		value="05/20/2017" id="kt_datepicker_3" />
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
													<!--  step 4 어학정보 시작  step 4 어학정보시작  step 4 어학정보시작 step 4 어학정보시작 -->


													<div class="my-5 step" data-wizard-type="step-content">
														<h5 class="mb-10 font-weight-bold text-dark">어학정보</h5>
														<!--begin::Group-->


														<div class="row">
															<div class="col-xl-6">
																<!--begin::Group-->
																<div class="form-group">
																	<label> 외국어명 </label> <input type="text"
																		class="form-control form-control-solid form-control-lg"
																		name="content" placeholder="내용을 입력하세요."
																		id="ap_content" />

																</div>
															</div>
															<!--end::Group-->
															<!--begin::Group-->
															<div class="col-xl-6">
																<div class="form-group">
																	<label> 시험명 </label> <input type="text"
																		class="form-control form-control-solid form-control-lg"
																		name="etc" placeholder="기타사항을 입력하세요." id="a_etc" />
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
																		name="content" placeholder="내용을 입력하세요."
																		id="ap_content" />

																</div>
															</div>
															<!--end::Group-->
															<!--begin::Group-->
															<div class="col-xl-6">
																<div class="form-group">
																	<label> 발급처 </label> <input type="text"
																		class="form-control form-control-solid form-control-lg"
																		name="etc" placeholder="기타사항을 입력하세요." id="a_etc" />
																</div>
															</div>
															<!--end::Group-->
														</div>

														<div class="form-group row">
															<label class="col-xl-6 col-form-label"> 발급일자 </label>
															<div class="col-xl-6">
																<div class="input-group date">
																	<input type="text" class="form-control" readonly
																		value="05/20/2017" id="kt_datepicker_3" />
																	<div class="input-group-append">
																		<span class="input-group-text"> <i
																			class="la la-calendar"></i>
																		</span>
																	</div>
																</div>
															</div>
														</div>








													</div>
													<!-- step4 어학정보 END  step4 어학정보 END step4 어학정보 END step4 어학정보 END-->


													<div
														class="d-flex justify-content-between border-top pt-10 mt-15">
														<div class="mr-2">
															<button type="button" id="prev-step"
																class="btn btn-secondary font-weight-bolder px-9 py-4"
																data-wizard-type="action-prev">Previous</button>
														</div>
														<div>
															<button type="button"
																class="btn btn-success font-weight-bolder px-9 py-4"
																data-wizard-type="action-submit">Submit</button>
															<button type="button" id="next-step"
																class="btn btn-info font-weight-bolder px-9 py-4"
																data-wizard-type="action-next">Next</button>
														</div>
													</div>

													<!--end::Wizard Actions-->
												</div>
											</div>
										</form>
										<!--end::Wizard Form-->
									</div>
								</div>
							</div>
							<!--end::Body-->
						</div>
						<!--end::Card-->
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