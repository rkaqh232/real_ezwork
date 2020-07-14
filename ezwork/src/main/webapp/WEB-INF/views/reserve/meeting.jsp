<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<style>
	p{margin:0}
	table{text-align:center;}
	.bg-forest{background:#ff9900}
	.bg-mountain{background:#2d8659;}
	.bg-ocean{background:#4d4dff}
	.bg-desert{background:#ffd966}
</style>
<script src="resources/js/reserve.js"></script>

<!--begin::Advance Table Widget 10-->
	<div class="card card-custom gutter-b" style="width:90%; margin:0 auto; padding:30px;">
		<!--begin::Header-->
		<div class="card-header border-0 py-5">
			<h2 class="card-title align-items-start flex-column">
				<span class="card-label font-weight-bolder text-dark">회의실 예약 현황</span>
			</h2>
			<div class="card-toolbar">
				<button type="button" class="btn btn-info font-weight-bolder font-size-sm" data-toggle="modal" data-target="#exampleModalScrollable">예약하기</button>
				<!-- Modal-->
				<div class="modal fade" id="exampleModalScrollable" tabindex="-1" role="dialog" aria-labelledby="staticBackdrop" aria-hidden="true">
				    <div class="modal-dialog modal-dialog-scrollable" role="document">
				        <div class="modal-content">
				            <div class="modal-header">
				                <h3 class="modal-title" id="exampleModalLabel" style="font-weight:bold;">회의실 예약하기</h3>
				                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				                    <i aria-hidden="true" class="ki ki-close"></i>
				                </button>
				            </div>
				            <div class="card card-custom">
 <!--begin::Form-->
 <form method="post" action="ReserveAction.res">
  <div class="card-body" style="padding-bottom:0px;">
   <div class="form-group row">
    <label  class="col-2 col-form-label">예약자</label>
    <div class="col-10">
     <input class="form-control" name="USER_NAME" type="text" value="${id}" id="example-text-input" disabled/>
    </div>
   </div>
   <div class="form-group row">
    <label for="example-search-input" class="col-2 col-form-label">회의 내용</label>
    <div class="col-10">
     <input class="form-control" name="MSUBJECT" type="search" id="example-search-input"/>
    </div>
   </div>
   <div class="form-group row">
    <label for="example-tel-input" class="col-2 col-form-label">전화번호</label>
    <div class="col-10">
     <input class="form-control" type="tel" name="USER_TEL" id="example-tel-input"/>
    </div>
   </div>
   <div class="form-group row">
    <label for="mroom" class="col-2 col-form-label">회의실</label>
    <div class="col-10">
     <select class="custom-select form-control" name="RNAME" id="mroom">
     <option selected value="Forest">Forest</option>
     <option value="Ocean">Ocean</option>
     <option value="Desert">Desert</option>
     <option value="Mountain">Mountain</option>
     <option value="Sky">Sky</option>
    </select>
    </div>    
   </div>
   <div class="form-group row">
    <label for="stime" class="col-2 col-form-label">시간</label>
    <div class="col-10">
     <!-- <input class="form-control" type="time" value="09:00:00" step="3600" id="stime"/> -->
     <select name="MTIME" class="form-control" id="stime">
     <option value="8">08 시 ~ 09 시</option>
     <option value="9">09 시 ~ 10 시</option>
     <option value="10">10 시 ~ 11 시</option>
     <option value="11">11 시 ~ 12 시</option>
     <option value="12">12 시 ~ 13 시</option>
     <option value="13">13 시 ~ 14 시</option>
     <option value="14">14 시 ~ 15 시</option>
     <option value="15">15 시 ~ 16 시</option>
     <option value="16">16 시 ~ 17 시</option>
     <option value="17">17 시 ~ 18 시</option>
    </select>
    </div>
   </div>
   <div class="form-group row">
    <!-- <label for="example-time-input" class="col-2 col-form-label">끝</label>
    <div class="col-10">
     <select name="ETIME" class="form-control" id="etime">
     <option value="9">09 시</option>
     <option value="10">10 시</option>
     <option value="11">11 시</option>
     <option value="12">12 시</option>
     <option value="13">13 시</option>
     <option value="14">14 시</option>
     <option value="15">15 시</option>
     <option value="16">16 시</option>
     <option value="17">17 시</option>
     <option value="18">18 시</option>
    </select>
    </div> -->
   </div>
   <div class="modal-footer">
       <button type="reset" class="btn btn-light-primary font-weight-bold" data-dismiss="modal">취소</button>
       <button type="submit" class="btn btn-primary font-weight-bold">예약</button>
   </div>
  </div>
 </form>
 <!-- form 끝 -->
</div>
				        </div>
				    </div>
				</div>
			</div>
		</div>
		<!--end::Header-->
		<!--begin::Body-->
		<div class="card-body py-0">
			<!--begin::Table-->
			<div class="table-responsive">
				<table class="table table-head-custom table-vertical-center meeting" id="kt_advance_table_widget_4">
					<thead>
						<tr>
							<th class="pl-0" style="min-width: 120px">회의실</th>
							<th style="min-width: 50px">08</th>
							<th style="min-width: 50px">09</th>
							<th style="min-width: 50px">10</th>
							<th style="min-width: 50px">11</th>
							<th style="min-width: 50px">12</th>
							<th style="min-width: 50px">13</th>
							<th style="min-width: 50px">14</th>
							<th style="min-width: 50px">15</th>
							<th style="min-width: 50px">16</th>
							<th style="min-width: 50px">17</th>
							<th style="min-width: 50px">18</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th class="pl-0">
								<a href="#" class="text-dark-75 font-weight-bolder text-hover-primary font-size-lg">Forest</a>
							</th>
							<td>
							</td>
							<td>
								<p class="bg-primary text-white py-2 px-4">&nbsp;</p>
							</td>
							<td>
								<p class="bg-primary text-white py-2 px-4">&nbsp;</p>
							</td>
							<td>
								<p class="bg-primary text-white py-2 px-4"></p>
							</td>
							<td>
								<p class="bg-primary text-white py-2 px-4"></p>
							</td>
							<td>
								<p class="bg-primary text-white py-2 px-4"></p>
							</td>
							<td>
								<p class="bg-primary text-white py-2 px-4"></p>
							</td>
							<td>
							</td>
							<td>
							</td>
							<td>
							</td>
							<td>
							</td>														
						</tr>
						<tr>
							<th class="pl-0">
								<a href="#" class="text-dark-75 font-weight-bolder text-hover-primary font-size-lg">Ocean</a>
							</th>
							<td>
							</td>
							<td>
								<p class="bg-success text-white py-2 px-4">박차장</p>
							</td>
							<td>
								<p class="bg-success text-white py-2 px-4">박차장</p>
							</td>
							<td>
								<p class="bg-success text-white py-2 px-4">박차장</p>
							</td>
							<td>
								<p class="bg-success text-white py-2 px-4">박차장</p>
							</td>
							<td>
								<p class="bg-success text-white py-2 px-4">박차장</p>
							</td>
							<td>
								<p class="bg-success text-white py-2 px-4">박차장</p>
							</td>
							<td>
								<p class="bg-success text-white py-2 px-4">박차장</p>
							</td>
							<td>
								<p class="bg-success text-white py-2 px-4">박차장</p>
							</td>
							<td>
								<p class="bg-success text-white py-2 px-4">박차장</p>
							</td>
							<td>
							</td>														
						</tr>
						<tr>
							<th class="pl-0">
								<a href="#" class="text-dark-75 font-weight-bolder text-hover-primary font-size-lg">Desert</a>
							</th>
							<td>
							</td>
							<td>
								<p class="bg-danger text-white py-2 px-4">김팀장</p>
							</td>
							<td>
							</td>
							<td>
							</td>
							<td>
							</td>
							<td>
							</td>
							<td>
							</td>
							<td>
							</td>
							<td>
							</td>
							<td>
							</td>
							<td>
							</td>														
						</tr>
						<tr>
							<th class="pl-0">
								<a href="#" class="text-dark-75 font-weight-bolder text-hover-primary font-size-lg">Mountain</a>
							</th>
							<td>
							</td>
							<td>
								<p class="bg-warning text-white py-2 px-4">박차장</p>
							</td>
							<td>
								<p class="bg-success text-white py-2 px-4">박차장</p>
							</td>
							<td>
								<p class="bg-success text-white py-2 px-4">박차장</p>
							</td>
							<td>
								<p class="bg-success text-white py-2 px-4">박차장</p>
							</td>
							<td>
								<p class="bg-success text-white py-2 px-4">박차장</p>
							</td>
							<td>
								<p class="bg-success text-white py-2 px-4">박차장</p>
							</td>
							<td>
								<p class="bg-success text-white py-2 px-4">박차장</p>
							</td>
							<td>
								<p class="bg-success text-white py-2 px-4">박차장</p>
							</td>
							<td>
								<p class="bg-success text-white py-2 px-4">박차장</p>
							</td>
							<td>
							</td>														
						</tr>
						<tr>
							<th class="pl-0">
								<a href="#" class="text-dark-75 font-weight-bolder text-hover-primary font-size-lg">Sky</a>
							</th>
							<td>
							</td>
							<td>
								<p class="bg-info text-white py-2 px-4">박차장</p>
							</td>
							<td>
							</td>
							<td>
							</td>
							<td>
							</td>
							<td>
							</td>
							<td>
							</td>
							<td>
							</td>
							<td>
							</td>
							<td>
								
							</td>
							<td>
							</td>														
						</tr>
					</tbody>
				</table>
			</div>
			<!--end::Table-->
		</div>
		<!--end::Body-->
	</div>
	<!--end::Advance Table Widget 10-->