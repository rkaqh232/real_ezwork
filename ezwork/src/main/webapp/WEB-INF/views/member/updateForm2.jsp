<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>사원 정보 수정</title>
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
							</div>
						</div>
						<!-- 탭메뉴  종료  탭메뉴   종료    탭메뉴   종료   탭메뉴  종료  탭메뉴  종료  탭메뉴   종료 탭메뉴   종료  탭메뉴   종료  탭메뉴   종료 탭메뉴  -->
						<!--end::Wizard Nav-->
						<!--begin::Card-->

                       <form class="form" id="kt_form" action="updateProcess.net" method="post">
                       <c:set var="m" value="${memberinfo}" />

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
															font-weight="bold";>사원 등록<a style="color:red">   * 필수항목입니다. </a> </h3>
														<!--begin::Group-->
														<div class="form-group row">
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
																		
																		<input type="file" id="upfile" name="profile_avatar" value="${m.profile_avatar}" accept=".png, .jpg, .jpeg" readonly/> 
																		
																		<input type="hidden" name="profile_avatar_remove" />
																		<!-- <input type="file" id="upfile" name="uploadfile"> -->
																		
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
														<!--  사원번호  -->
														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">
																사원번호 </label>
															<div class="col-lg-9 col-xl-9">
																<input
																	class="form-control form-control-solid form-control-lg"
																	name="M_CODE" id="M_CODE" type="text" value="${m.M_CODE}" readonly /><span class="form-text text-muted">참고 : 수정불가능 항목입니다. 
																	</span>
															</div>
														</div>
														<!--  비밀번호  -->
														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">비밀번호<a style="color:red"> * </a></label>
															<div class="col-lg-9 col-xl-9">
																<input
																	class="form-control form-control-solid form-control-lg"
																	name="M_PASS" type="text" id="password" value="${m.M_PASS }" /> <span
																	class="form-text text-muted"> 참고 : 6자리까지 수정 가능합니다. </span>
															</div>
														</div>
														<!--end::Group-->
														<!--begin::Group-->
														
														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">부서코드</label>
																<div class="col-lg-9 col-xl-9">
																	<label class="radio radio-rounded radio-info">															
																<input type="radio" name="M_PART_C" id="M_PART_C" value="A1_총무" readonly/>A1 총무 <span></span>
																	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> 
																
																<label class="radio radio-rounded radio-info">
																<input type="radio" name="M_PART_C" id="M_PART_C" value="A2_재무" readonly/>A2   재무<span></span>
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> 
																
																<label class="radio radio-rounded radio-info">
																<input type="radio" name="M_PART_C" id="M_PART_C" value="A3_인사" readonly/>A3   인사<span></span>
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> 
																
																<label class="radio radio-rounded radio-info">
																<input type="radio" name="M_PART_C" id="M_PART_C" value="B1_경영지원" readonly/>B1   경영지원<span></span>
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> 
																
																<label class="radio radio-rounded radio-info">
																<input type="radio" name="M_PART_C" id="M_PART_C" value="B2_S/W지원" readonly/>B2  S/W지원<span></span>
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> 
																
																<label class="radio radio-rounded radio-info">
																<input type="radio" name="M_PART_C" id="M_PART_C" value="B3_기술지원" readonly/>B3   기술지원<span></span>
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
																 
																<label class="radio radio-rounded radio-info">
																<input type="radio" name="M_PART_C" id="M_PART_C" value="C1_영업1팀" readonly/>C1   영업1팀<span></span>
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> 
																
																<label class="radio radio-rounded radio-info">
																<input type="radio" name="M_PART_C" id="M_PART_C" value="C2_영업2팀" readonly/>C2   영업2팀<span></span>
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
																
																<label class="radio radio-rounded radio-info">
																<input type="radio" name="M_PART_C" id="M_PART_C" value="Q_임원"/>Q  임원<span></span>
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
																	name="M_NAME" type="text" id="M_NAME"  value="" placeholder="이제훈"/>
															</div>
														</div>


														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">
																생년월일 </label>
															<div class="col-lg-4 col-md-9 col-sm-12">
																<div class="input-group date">
																	<input type="text" class="form-control"
																		value="17/08/1984" id="kt_datepicker_3" name="M_BIRTH"/>
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
																		name="M_MOBILE_TEL" id="M_MOBILE_TEL" placeholder="010-1234-5678" />
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
																		name="M_EMAIL" id="M_EMAIL" placeholder="sample@Ezwork.com" />
																</div><span class="form-text text-muted" placeholder="sample@Ezwork.com">참고 : 해당 양식으로 작성해주세요.
																	(ex: sample@Ezwork.com)</span>
															</div>
														</div>

														


														<!--  주소 API  주소 API  주소 API  주소 API    주소 API  주소 API  주소 API  주소 API   주소 API  주소 API  주소 API  주소 API -->

														<!--  우편번호  -->
														<div class="row">
															<div class="col-xl-6">
																<!--begin::Group-->
																<div class="form-group">
																	<label>우편번호</label> <input type="text"
																		class="form-control form-control-solid form-control-lg"
																		name="M_postcode" placeholder="우편번호"
																		id="sample6_postcode"
																		onclick="sample6_execDaumPostcode()" /> <span
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
																name="M_ADDRESS" placeholder="서울특별시 마포구 성미산로 157-3"
																 id="M_ADDRESS" /> 
														</div>




														<!--  상세주소 아래 두칸  -->
														<div class="row">
															<div class="col-xl-6">
																<!--begin::Group-->
																<div class="form-group">
																	<label> 상세주소 </label> <input type="text"
																		class="form-control form-control-solid form-control-lg"
																		name="M_ADDRESS2" placeholder="4층"
																		id="sample6_detailAddress" />

																</div>
															</div>
															<!--end::Group-->
															<!--begin::Group-->
															<div class="col-xl-6">
																<div class="form-group">
																	<label>상세주소 2 </label> <input type="text"
																		class="form-control form-control-solid form-control-lg"
																		name="M_ADDRESS3" placeholder="기타"
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
													
													
												
												
												

													<!-- Step2 발령정보 END  Step2 발령정보 END  Step2 발령정보 END Step2  발령정보 END  Step2발령정보 END  -->

													<!--end::Wizard Step 2-->


													<!--begin::Wizard Step 3-->
													<!--  step 3 시작  step 3 시작  step 3 시작 step 3 시작 step 3 시작 step 3 시작 -->
													


													<!-- step3 학력정보 END  step3  학력정보 END  step3  학력정보 END  step3  학력정보 END  step3  학력정보 END  -->

													<!--end::Wizard Step 3-->
													<!--begin::Wizard Step 4-->
													<!--  step 4 자격증정보 시작  step 4 자격증정보  step 4 자격증정보 step 4 자격증정보 -->
													
													
																										
													<!-- step4 어학정보 END  step4 어학정보 END step4 어학정보 END step4 어학정보 END-->

													<div
														class="d-flex justify-content-between border-top pt-10 mt-15">
														
														<div>
															<button type="submit" 
																class="btn btn-success font-weight-bolder px-9 py-4"
																>저장</button>
															
															
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
	<script src="resources/js/update.js"></script>
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