<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#kt_content>div>div>div.card-body>table>thead>tr>th:nth-child(1) {
	width: 8%
}

#kt_content>div>div>div.card-body>table>thead>tr>th:nth-child(2) {
	width: 10%
}

#kt_content>div>div>div.card-body>table>thead>tr>th:nth-child(3) {
	width: 45%
}

#kt_content>div>div>div.card-body>table>thead>tr>th:nth-child(4) {
	width: 12%
}

#kt_content>div>div>div.card-body>table>thead>tr>th:nth-child(5) {
	width: 18%
}

#kt_content>div>div>div.card-body>table>thead>tr>th:nth-child(6) {
	width: 7%
}
</style>
</head>
<body>
	<div class="container">
		<div class="card card-custom">
			<div class="card-header">
				<div class="card-title">
					<span class="card-icon"> <i
						class="flaticon2-chat-1 text-primary"></i>
					</span>
					<h3 class="card-label">
						경조사알림 <small>게시판</small>
					</h3>
				</div>

		
				<div class="card-toolbar">
			    <div class="rows">
				<select class="form-control" id="viewcount">
						<option value="1">1</option>
						<option value="3">3</option>
						<option value="5">5</option>
						<option value="7">7</option>
						<option value="10" selected>10</option>
					</select>
				</div>
					<a href="BoardWrite.ev" class="btn btn-info" style="margin-left:10px;">글쓰기</a>
				</div>
			</div>
			<div class="card-body">
				<table class="table table-hover" style="text-align:center; font-size:13px;">
					<thead>
						<tr>
							<th scope="col">글번호</th>
							<th scope="col">말머리</th>
							<th scope="col">글제목</th>
							<th scope="col">작성자</th>
							<th scope="col">작성날짜</th>
							<th scope="col">조회수</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">1</th>
							<td>결혼</td>
							<td>ㅇㅇ</td>
							<td><span
								class="label label-inline label-light-primary font-weight-bold">
									인사팀 </span></td>
							<td>2020-07-07</td>
							<td>0</td>
						</tr>
						<tr>
							<th scope="row">2</th>
							<td>부고</td>
							<td>ㅇㅇ</td>
							<td><span
								class="label label-inline label-light-success font-weight-bold">
									인사팀 </span></td>
							<td>2020-07-07</td>
							<td>0</td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td>감사인사</td>
							<td>ㅇㅇ</td>
							<td><span
								class="label label-inline label-light-danger font-weight-bold">
									인사팀 </span></td>
							<td>2020-07-07</td>
							<td>0</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="card-footer d-flex justify-content-between">

				<!--begin::Pagination-->
				<div
					class="d-flex justify-content-between align-items-center flex-wrap"
					style="margin: auto;">
					<div class="d-flex flex-wrap py-2 mr-3">
						<a href="#" class="btn btn-icon btn-sm btn-light mr-2 my-1"><i
							class="ki ki-bold-double-arrow-back icon-xs"></i></a> <a href="#"
							class="btn btn-icon btn-sm btn-light mr-2 my-1"><i
							class="ki ki-bold-arrow-back icon-xs"></i></a> <a href="#"
							class="btn btn-icon btn-sm border-0 btn-light mr-2 my-1">...</a>
						<a href="#"
							class="btn btn-icon btn-sm border-0 btn-light mr-2 my-1">23</a> <a
							href="#"
							class="btn btn-icon btn-sm border-0 btn-light btn-hover-info active mr-2 my-1">24</a>
						<a href="#"
							class="btn btn-icon btn-sm border-0 btn-light mr-2 my-1">25</a> <a
							href="#" class="btn btn-icon btn-sm border-0 btn-light mr-2 my-1">26</a>
						<a href="#"
							class="btn btn-icon btn-sm border-0 btn-light mr-2 my-1">27</a> <a
							href="#" class="btn btn-icon btn-sm border-0 btn-light mr-2 my-1">28</a>
						<a href="#"
							class="btn btn-icon btn-sm border-0 btn-light mr-2 my-1">...</a>

						<a href="#" class="btn btn-icon btn-sm btn-light mr-2 my-1"><i
							class="ki ki-bold-arrow-next icon-xs"></i></a> <a href="#"
							class="btn btn-icon btn-sm btn-light mr-2 my-1"><i
							class="ki ki-bold-double-arrow-next icon-xs"></i></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--end:: Pagination-->

</body>
</html>