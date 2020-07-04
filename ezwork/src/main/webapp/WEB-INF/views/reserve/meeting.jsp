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
 <form>
  <div class="card-body">
   <div class="form-group row">
    <label  class="col-2 col-form-label">Text</label>
    <div class="col-10">
     <input class="form-control" type="text" value="Artisanal kale" id="example-text-input"/>
    </div>
   </div>
   <div class="form-group row">
    <label for="example-search-input" class="col-2 col-form-label">Search</label>
    <div class="col-10">
     <input class="form-control" type="search" value="How do I shoot web" id="example-search-input"/>
    </div>
   </div>
   <div class="form-group row">
    <label for="example-email-input" class="col-2 col-form-label">Email</label>
    <div class="col-10">
     <input class="form-control" type="email" value="bootstrap@example.com" id="example-email-input"/>
    </div>
   </div>
   <div class="form-group row">
    <label for="example-tel-input" class="col-2 col-form-label">Telephone</label>
    <div class="col-10">
     <input class="form-control" type="tel" value="1-(555)-555-5555" id="example-tel-input"/>
    </div>
   </div>
   <div class="form-group row">
    <label for="example-datetime-local-input" class="col-2 col-form-label">날짜</label>
    <div class="col-10">
     <input class="form-control" type="datetime-local" value="2011-08-19T13:45:00" id="example-datetime-local-input"/>
    </div>
   </div>
   <div class="form-group row">
    <label for="example-time-input" class="col-2 col-form-label">시작</label>
    <div class="col-10">
     <input class="form-control" type="time" value="13:45:00" id="example-time-input"/>
    </div>
   </div>
   <div class="form-group row">
    <label for="example-time-input" class="col-2 col-form-label">끝</label>
    <div class="col-10">
     <input class="form-control" type="time" value="13:45:00" id="example-time-input"/>
    </div>
   </div>
   <div class="modal-footer">
       <button type="button" class="btn btn-light-primary font-weight-bold" data-dismiss="modal">취소</button>
       <button type="button" class="btn btn-primary font-weight-bold">예약</button>
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