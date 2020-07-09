<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<!--begin::Card-->
		<div class="card card-custom">
			<div class="card-header">
				<div class="card-title">
					<i class="flaticon2-chat-1 text-info"></i>
					<h3 class="card-label">&nbsp;글 상세보기</h3>
					<small>경조사게시판</small>
				</div>
				
					<div class="card-toolbar">
					<a href="BoardWrite.ev" class="btn btn-info"
						style="margin-left: 10px;">글쓰기</a>
				</div>
				
			</div>
			
			<div class="card-body">
				<table class="table" >
					<colgroup>
						<col width="10%">
						<col width="40%">
						<col width="10%">
						<col width="40%">
					</colgroup>
					<tbody style="text-align:center; font-size:14px;">
						<tr>
							<th class="table-Secondary" style="text-align: center;"><div>말머리</div></th>
							<td><div>${boarddata.EV_SORT } </div></td>
							<th class="table-Secondary"><div>작성날짜</div></th>
							<td><div>${boarddata.EV_DATE }</div></td>
						</tr>
						<tr>
							<th class="table-Secondary"><div>글쓴이</div></th>
							<td><div>
									<span
										class="label label-inline label-light-info font-weight-bold">
										${boarddata.EV_NAME } </span>
								</div></td>
							<th class="table-Secondary"><div>조회수</div></th>
							<td><div>${boarddata.EV_READCOUNT } </div></td>
						</tr>
						<tr>
						</tr>
						<tr>
							<th class="table-Secondary"><div>제목</div></th>
							<td colspan="3"><div>${boarddata.EV_TITLE } </div></td>
						</tr>
					</tbody>
				</table>
					<div>
					<textarea class="form-control" rows="5" readOnly
						style="height: 100%;">${boarddata.EV_CONTENT}</textarea>
					</div>
					
					</div>
			<div class="card-footer" style="text-align:center;">
			 <div class="btn-group" role="group" aria-label="First group" >
			 
		<!-- 수정 -->
		<a href="#" class="btn btn-default btn-icon btn-sm mr-2" data-toggle="tooltip" title="" data-original-title="수정">
			<span class="svg-icon svg-icon-md">
		  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
		 <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <rect x="0" y="0" width="24" height="24"/>
        <path d="M8,17.9148182 L8,5.96685884 C8,5.56391781 8.16211443,5.17792052 8.44982609,4.89581508 L10.965708,2.42895648 C11.5426798,1.86322723 12.4640974,1.85620921 13.0496196,2.41308426 L15.5337377,4.77566479 C15.8314604,5.0588212 16,5.45170806 16,5.86258077 L16,17.9148182 C16,18.7432453 15.3284271,19.4148182 14.5,19.4148182 L9.5,19.4148182 C8.67157288,19.4148182 8,18.7432453 8,17.9148182 Z" fill="#000000" fill-rule="nonzero" transform="translate(12.000000, 10.707409) rotate(-135.000000) translate(-12.000000, -10.707409) "/>
        <rect fill="#000000" opacity="0.3" x="5" y="20" width="15" height="2" rx="1"/>
    </g>
</svg><!--end::Svg Icon--></span>
		</a>
		
		
		<!-- 답글 -->
		<a href="#" class="btn btn-default btn-icon btn-sm mr-2" data-toggle="tooltip" title="" data-original-title="답글">
			<span class="svg-icon svg-icon-md">
		  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
		  <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <rect x="0" y="0" width="24" height="24"/>
        <path d="M21.4451171,17.7910156 C21.4451171,16.9707031 21.6208984,13.7333984 19.0671874,11.1650391 C17.3484374,9.43652344 14.7761718,9.13671875 11.6999999,9 L11.6999999,4.69307548 C11.6999999,4.27886191 11.3642135,3.94307548 10.9499999,3.94307548 C10.7636897,3.94307548 10.584049,4.01242035 10.4460626,4.13760526 L3.30599678,10.6152626 C2.99921905,10.8935795 2.976147,11.3678924 3.2544639,11.6746702 C3.26907199,11.6907721 3.28437331,11.7062312 3.30032452,11.7210037 L10.4403903,18.333467 C10.7442966,18.6149166 11.2188212,18.596712 11.5002708,18.2928057 C11.628669,18.1541628 11.6999999,17.9721616 11.6999999,17.7831961 L11.6999999,13.5 C13.6531249,13.5537109 15.0443703,13.6779456 16.3083984,14.0800781 C18.1284272,14.6590944 19.5349747,16.3018455 20.5280411,19.0083314 L20.5280247,19.0083374 C20.6363903,19.3036749 20.9175496,19.5 21.2321404,19.5 L21.4499999,19.5 C21.4499999,19.0068359 21.4451171,18.2255859 21.4451171,17.7910156 Z" fill="#000000" fill-rule="nonzero"/>
    </g>
</svg><!--end::Svg Icon--></span>
		</a>
		
			 <!-- 삭제 -->
			 <a href="#" class="btn btn-default btn-icon btn-sm mr-2" data-toggle="tooltip" title="" data-original-title="삭제">
			<span class="svg-icon svg-icon-md">
		  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
		<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
		<rect x="0" y="0" width="24" height="24"></rect>
		<path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero"></path>
		<path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3"></path>
		</g>
		</svg>
		</span>
		</a>
		
		<!-- 목록 -->
		 <a href="BoardList.ev" class="btn btn-default btn-icon btn-sm mr-2" data-toggle="tooltip" title="" data-original-title="목록">
			<span class="svg-icon svg-icon-md"><!--begin::Svg Icon | path:C:\wamp64\www\keenthemes\themes\metronic\theme\html\demo1\dist/../src/media/svg/icons\Layout\Layout-left-panel-2.svg--><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <rect x="0" y="0" width="24" height="24"/>
        <path d="M10,4 L21,4 C21.5522847,4 22,4.44771525 22,5 L22,7 C22,7.55228475 21.5522847,8 21,8 L10,8 C9.44771525,8 9,7.55228475 9,7 L9,5 C9,4.44771525 9.44771525,4 10,4 Z M10,10 L21,10 C21.5522847,10 22,10.4477153 22,11 L22,13 C22,13.5522847 21.5522847,14 21,14 L10,14 C9.44771525,14 9,13.5522847 9,13 L9,11 C9,10.4477153 9.44771525,10 10,10 Z M10,16 L21,16 C21.5522847,16 22,16.4477153 22,17 L22,19 C22,19.5522847 21.5522847,20 21,20 L10,20 C9.44771525,20 9,19.5522847 9,19 L9,17 C9,16.4477153 9.44771525,16 10,16 Z" fill="#000000"/>
        <rect fill="#000000" opacity="0.3" x="2" y="4" width="5" height="16" rx="1"/>
    </g>
</svg><!--end::Svg Icon--></span>
		</a>
		
    </div>
			</div>
			</div>
		</div>
</body>
</html>