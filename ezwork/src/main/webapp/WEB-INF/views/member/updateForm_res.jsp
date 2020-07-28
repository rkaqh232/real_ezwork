<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
a{
font-size:12px !important;
}
#kt_content {
	padding-top: 0px;
}

</style>
<link href="resources/assets/css/pages/wizard/wizard-4.css?v=7.0.4" rel="stylesheet" type="text/css" />

<body>
<div class="content d-flex flex-column flex-column-fluid"
		id="kt_content">
		<div class="subheader py-2 py-lg-4 subheader-solid" id="kt_subheader">
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
							<i class="flaticon-users-1 text-info"></i> &nbsp;퇴사 정보 입력
						</h5>
						<!--end::Page Title-->
						<small style="color: gray;">퇴사</small>
					</div>
					<!--end::Page Heading-->
				</div>
				<!--end::Info-->

			</div>
		</div>
<!--begin::Entry-->	

	<div class="d-flex flex-column-fluid">
	
		<!--begin::Container-->
		<div class="container" style="margin-top: 23px;">
		
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

                       <form class="form" id="kt_form" action="resignationProcess.net" method="post">

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
															font-weight="bold";>${info.m_NAME} 사원의 퇴사 정보<a style="color:RED; size:50px !important;"> ▶ 주의 : 절차 완료 전 재확인 필수</a></h3>
														<!--begin::Group-->
														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label text-left">
																사진 </label>
															<div class="col-lg-9 col-xl-9">
																<div class="image-input image-input-outline"
																	id="kt_user_add_avatar">
																	<div class="image-input-wrapper"
																			style="background-image: url('resources/memberupload/${info.m_FILE}')" readonly></div>
																	
																</div>
															</div>
														</div> 
														
														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">
																성명 </label>
															<div class="col-lg-9 col-xl-9">
																<input
																	class="form-control form-control-solid form-control-lg"
																	name="M_NAME" type="text" id="M_NAME"  value="${info.m_NAME}" readonly/>
																	<span class="form-text text-muted">참고 : 반드시 성명을 확인해주세요.
																	</span>
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
																	name="M_CODE" id="M_CODE" type="text" value="${info.m_CODE}" 
																	readonly /><span class="form-text text-muted">
																	</span>
															</div>
														</div>
														
														
														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">부서코드</label>
															<div class="col-lg-9 col-xl-9">
																<input
																	class="form-control form-control-solid form-control-lg"
																	name="M_PART_C" type="text" id="M_PART_C" value="${info.m_PART_C}" readonly/>
															</div>
														</div>
											
														
													<!-- 직급코드 -->
													
													<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">직급코드(level)</label>
															<div class="col-lg-9 col-xl-9">
																<input
																	class="form-control form-control-solid form-control-lg"
																	name="M_LEVEL" type="text" id="M_LEVEL" value="${info.m_LEVEL}" readonly/>
															</div>
														</div>
														
														
														
					


														
														
														
														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">
																핸드폰<a style="color:#BF00FF">  ▶</a></label>
															<div class="col-lg-9 col-xl-9">
																<div
																	class="input-group input-group-solid input-group-lg">
																	<div class="input-group-prepend">
																		<span class="input-group-text"> <i
																			class="la la-phone"></i>
																		</span>
																	</div>
																	<input class="form-control form-control-solid form-control-lg" type="text"
																		name="M_MOBILE_TEL" id="M_MOBILE_TEL" value="${info.m_MOBILE_TEL}" />
																</div>
																<span class="form-text text-muted">참고 : 동명이인의 경우 연락처와 생년월일을 확인해주세요.
																	</span>
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
																퇴사일자 </label>
															<div class="col-lg-4 col-md-9 col-sm-12">
																<div class="input-group date">
																	<input type="text" class="form-control"
																		name="RES_DATE" id="kt_datepicker_3" />
																	<div class="input-group-append">
																		<span class="input-group-text"> <i
																			class="la la-calendar"></i>
																		</span>
																	</div>
																</div></div>
															
														</div>
														
														<div class="form-group row">
															<label class="col-xl-3 col-lg-3 col-form-label">
																개인정보 처리방침 제 2 조. </label>
															<div class="col-lg-9 col-xl-9"> 
															① 회사는 관련 법령이 규정한 절차에 따라 개인정보를 보유·이용하는 경우, 정보주체로부터 개인정보를 제공받을 때에 동의를 얻은 범위 내에서 개인정보를 보유·이용하며, 보유·이용기간, 이용범위 등의 제한을 명확히 준수합니다.
															<br>② 각각의 개인정보 처리 및 보유 기간은 다음과 같습니다.
															<br>
															
															개인정보의 처리 및 보유기간
소속 직원의 개인정보 : 별도의 동의가 없는 한, 퇴사시로부터 3년 회사는 개인정보의 보유·이용 기간이 경과하거나, 이용 목적이 달성되면 지체없이 개인정보를 파기하나, "다른 법령에 따라 보존하여야 하는 경우" 또는 "정보주체로부터 개별 동의를 받은 경우"에는 보유 및 이용 기간이 경과한 개인정보를 파기하지 아니하고 보존할 수 있습니다.
																	</div>
																	</div>
																	
														</div>

													
													<div
														class="d-flex justify-content-between border-top pt-10 mt-15">
														<div>
															<button type="submit" 
																class="btn btn-success font-weight-bolder px-9 py-4"
																>저장</button>
															
														
														</div>
														<div class="mr-2">
																<button type="button" href="list.hr"
																class="btn btn-secondary font-weight-bolder px-9 py-4"
																>이전</button>
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