<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- 민혁 -->
<html>
<script src="resources/js/jquery-3.5.0.js"></script>
<head>
<title>ezWork 사원 검색</title>
<style>
#kt_content {
	padding-top: 0px;
}

.center-block {
	display: flex;
	justify-content: center; /*가운데 정렬*/
}

#kt_content>div>div.container>div {
	position: absolute;
	width: 1000px;
	left: 400px;
	top: 180px;
}

#kt_content>div.container>div>h5 {
	width: 100px;
	margin-left: 70px;
}

#kt_content>div:nth-child(6)>div.d-flex.flex-column-fluid>div>div {
	margin-left: 140px;
}

#kt_content>font {
	margin-left: 140px;
}

#kt_subheader_search>form>div>input {
	width: 340px;
	height: 40px;
	position: absolute;
	left: 100px;
	top: -9px;
}

#kt_subheader_search>form>div>button {
	width: 60px;
	height: 40px;
	position: absolute;
	left: 450px;
	top: -9px;
}

li .current {
	background: #faf7f7;
	color: gray;
}

.yellow {
	background: yellow;
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

#kt_content>div:nth-child(8)>div.d-flex.justify-content-between.align-items-center.flex-wrap>div
	{
	margin-left: 580px;
}

.container {
	width: 100%
}

#kt_content>div>div.container>div>div {
	width: 100%;
}

td:nth-child(1) {
	width: 33%
}
</style>

<script>
	$(function() {
		//즐겨찾기 버튼 클릭 시 즐겨찾기 추가 또는 삭제
		$(".bookmarkbutton").click(
				function() {
					senddata = $(this).parent().parent().parent().parent()
							.parent().parent().parent().find("input").first()
							.val();
					senddata2 = $(this).parent().parent().parent().parent()
							.parent().parent().parent().find("input").eq(1)
							.val();
					t = $(this);
					if (senddata2 == 0) {
						t.addClass('flaticon-star text-warning');
					} else {
						t.removeClass('flaticon-star text-warning');
						t.addClass('flaticon-star');
					}
					$.ajax({
						url : "updatebookmark",
						type : "GET",
						data : {
							"id" : senddata,
							"bookmark" : senddata2
						},
						success : function(data) {
							//[{"m_BOOKMARK":1,"m_CODE":"park","m_OWNER":"park"},{"m_BOOKMARK":1,"m_CODE":"park","m_OWNER":"park"},{"m_BOOKMARK":1,"m_CODE":"park","m_OWNER":"park"}]
							console.log("data값은" + data.m_BOOKMARK);
							console.log("data값은" + data.m_CODE);
							console.log("data값은" + data.m_OWNER);
							if (data.length == 0) {
								t.parent().parent().parent().find(
												"input").eq(1).val(0);
							} else {
								$.each(data, function(i, item) {
									alert("즐겨찾기 목록에 추가되었습니다.");
									t.parent().parent()
											.parent().find("input").eq(1).val(
													item.m_BOOKMARK);
								})
							}

							/*
							t.parent().parent().parent().find("input").eq(1).val(bminf.bookmark);
							if (data != null) {
								t.addClass('yellow');
							} else {
								t.removeClass('yellow');
							}
							 */

						}//success
					});//ajax
				});//click
	});
</script>

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
							<i class="flaticon-users-1 text-info"></i> &nbsp;사원검색
						</h5>
						<!--end::Page Title-->
						<small style="color: gray;">조직도</small>
					</div>
					<!--end::Page Heading-->
				</div>
				<!--end::Info-->

			</div>
		</div>

		<div class="container">
			<div
				class="alert alert-custom alert-white alert-shadow fade show gutter-b"
				role="alert" style="margin-bottom: 0;">
				<!--begin::Title-->
				<h5 class="text-dark font-weight-bold mt-2 mb-2 mr-5">사원 검색</h5>
				<!--end::Title-->
				<!--begin::Separator-->
				<!--end::Separator-->
				<!--begin::Search Form-->
				<div class="d-flex align-items-center" id="kt_subheader_search">
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
				</div>
				<!--end::Search Form-->
			</div>
			<!--end::Details-->
		</div>
	</div>







	<!-- 카드시작 -->
	<c:if test="${listcount > 0 }">
		<font size=3>사원 수: ${listcount }</font>
		<br>
		<div>
			<div class="d-flex flex-column-fluid">
				<!--begin::Container-->
				<div class="container">
					<!--begin::Row-->
					<div class="row">
						<!--begin::Col-->

						<c:forEach var="m" items="${memberlist}">
							<!-- 여기서부터 -->
							<div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
								<!--begin::Card-->
								<div class="card card-custom gutter-b card-stretch">
									<!--begin::Body-->
									<div class="card-body pt-4">
										<!--begin::User-->
										<div class="d-flex align-items-end mb-7">
											<!--begin::Pic-->
											<div class="d-flex align-items-center">
												<!--begin::Pic-->
												<div class="flex-shrink-0 mr-4 mt-lg-0 mt-3">
													<div class="symbol symbol-circle symbol-lg-75">
														<img src="resources/assets/media/users/NINIZ.jpg"
															alt="image">
													</div>
													<div
														class="symbol symbol-lg-75 symbol-circle symbol-primary d-none">
														<span class="font-size-h3 font-weight-boldest">JM</span>
													</div>

												</div>
												<!--end::Pic-->
												<!--begin::Title-->
												<div class="d-flex flex-column">
													<a href="member_info?m_code=${m.m_CODE}"
														class="text-dark font-weight-bold text-hover-primary font-size-h4 mb-0">${m.m_NAME}</a>
													<span class="text-muted font-weight-bold">${m.m_PART_C}</span>
												</div>
												<!--end::Title-->
											</div>
											<!--end::Title-->
										</div>
										<!--end::User-->
										<!--begin::Desc-->
										<p class="mb-7">안녕하세요. ${m.m_PART_C}의 ${m.m_NAME} 입니다.</p>
										<!--end::Desc-->
										<!--begin::Info-->
										<div class="mb-7">
											<div
												class="d-flex justify-content-between align-items-center">
												<span class="text-dark-75 font-weight-bolder mr-2">E-mail:</span>
												<a href="#" class="text-muted text-hover-primary">${m.m_EMAIL}</a>
											</div>
											<div
												class="d-flex justify-content-between align-items-cente my-1">
												<span class="text-dark-75 font-weight-bolder mr-2">전화번호:</span>
												<a href="#" class="text-muted text-hover-primary">${m.m_MOBILE_TEL}</a>
											</div>
											<div
												class="d-flex justify-content-between align-items-center">
												<span class="text-dark-75 font-weight-bolder mr-2">즐겨찾기:</span>
												<span class="text-muted font-weight-bold"> <input
													type="hidden" name="ajaxmcode" value="${m.m_CODE}" />
													<input type="hidden" name="bookmark"
													value="${m.m_BOOKMARK}" />
													<p>
														
														<!-- 즐겨찾기 버튼을 눌렀을때 로그인 되어있던 id값 -->
														<c:set var="sessionOwner" value="${owner}" />
														<!-- session에 저장된 로그인 id값 -->
														
														
														<c:if test="${sessionOwner == m.m_OWNER}">
																<!-- <button class="bookmarkbutton"> -->
																	<i class="bookmarkbutton flaticon-star text-warning"></i>
																
														</c:if>
														<c:if test="${m.m_OWNER == null}">
															<!-- <button class="bookmarkbutton"> -->
																<i class="bookmarkbutton flaticon-star"></i>
															
														</c:if>
														
														<!-- session의 로그인 id값과 즐겨찾기 버튼 누른 사람의 값이 같으면 노란별 표시 -->
													</p>
												</span>
											</div>
										</div>
										<!--end::Info-->
										<a href="#"
											class="btn btn-block btn-sm btn-light-info font-weight-bolder text-uppercase py-4">write
											message</a>
									</div>
								</div>
							</div>
							<!-- 여기까지 -->
						</c:forEach>
					</div>
				</div>
			</div>
			<!--end::Row-->


			<!--begin::Pagination-->
			<div
				class="d-flex justify-content-between align-items-center flex-wrap"
				style="margin: auto;">
				<div class="d-flex flex-wrap py-2 mr-3">
					<c:if test="${page1 <= 1 }">
						<a class="btn btn-icon btn-sm btn-light mr-2 my-1"><i
							class="ki ki-bold-arrow-back icon-xs"></i></a>
					</c:if>
					<c:if test="${page1 > 1}">
						<a
							href="member_list?page=${page1-1}&search_field=${search_field}&search_word=${search_word}"
							class="btn btn-icon btn-sm btn-light mr-2 my-1"><i
							class="ki ki-bold-arrow-back icon-xs"></i></a>
					</c:if>

					<c:forEach var="a" begin="${startpage}" end="${endpage}">
						<c:if test="${a == page1 }">
							<a
								class="btn btn-icon btn-sm border-0 btn-hover-info active mr-2 my-1">${a }</a>
						</c:if>
						<c:if test="${a != page1}">
							<!-- 같지 않으면, 이동할 수 있다 -->
							<a
								href="member_list?page=${a}&search_field=${search_field}&search_word=${search_word}"
								class="btn btn-icon btn-sm border-0 btn-light mr-2 my-1">${a }</a>
						</c:if>
					</c:forEach>

					<c:if test="${page1 >= maxpage}">
						<a class="btn btn-icon btn-sm btn-light mr-2 my-1"><i
							class="ki ki-bold-arrow-next icon-xs"></i></a>
					</c:if>
					<c:if test="${page1 < maxpage}">
						<a
							href="member_list?page=${page1+1}&search_field=${search_field}&search_word=${search_word}"
							class="btn btn-icon btn-sm btn-light mr-2 my-1"><i
							class="ki ki-bold-arrow-next icon-xs"></i></a>
					</c:if>
				</div>
			</div>
		</div>
		</div>
		</div>
		<!--end:: Pagination-->

		</div>
	</c:if>
	</div>
	</div>
</body>
</html>