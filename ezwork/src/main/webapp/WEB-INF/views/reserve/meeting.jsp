<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<style>
	p{margin:0}
	table{text-align:center;}
	.table th, td{padding-left:0;padding-right:0;}
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
			<h4 class="card-label">
				<span class="card-label font-weight-bolder text-dark">
				
				&nbsp;회의실 예약 현황</span>
			</h4>
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
			 <form name="reserveform" method="post" action="ReserveAction.res">
			  <div class="card-body" style="padding-bottom:0px;">
			   <div class="form-group row">
			    <label  class="col-2 col-form-label">예약자</label>
			    <div class="col-10">
			     <input class="form-control form-control-solid" name="USER_NAME" type="text" value="${M_CODE}" id="example-text-input" readOnly/>
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
		<div class="card-body py-0" style="margin-bottom:50px;">
		<h1 id="today" style="text-align:center; margin:20 20 40 20;"></h1>
			<!--begin::Table-->
			<div class="table-responsive">
				<table class="table table-head-custom table-vertical-center" id="kt_advance_table_widget_4">
					<thead>
						<tr>
							<th style="min-width: 120px;text-align:center"><p class="font-size-lg">회의실</p></th>
							<th style="min-width: 70px">08:00-09:00</th>
							<th style="min-width: 70px;">09:00-10:00</th>
							<th style="min-width: 70px">10:00-11:00</th>
							<th style="min-width: 70px">11:00-12:00</th>
							<th style="min-width: 70px">12:00-13:00</th>
							<th style="min-width: 70px">13:00-14:00</th>
							<th style="min-width: 70px">14:00-15:00</th>
							<th style="min-width: 70px">15:00-16:00</th>
							<th style="min-width: 70px">16:00-17:00</th>
							<th style="min-width: 70px">17:00-18:00</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th>
								<p class="text-success">Forest</p>
							</th>
							<td id="f8">
							</td>
							<td id="f9">
							</td>
							<td id="f10">
							</td>
							<td id="f11">
							</td>
							<td id="f12">
							</td>
							<td id="f13">
							</td>
							<td id="f14">
							</td>
							<td id="f15">
							</td>
							<td id="f16">
							</td>
							<td id="f17">
							</td>												
						</tr>
						<tr>
							<th>
								<p class="text-blue">Ocean</p>
							</th>
							<td>
							</td>
							<td>
							</td>
							<td>
							</td>
							<td>
							<span class="label label-light-dark label-inline mr-2">Susan</span>
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
							<th>
								<p class="text-danger">Desert</p>
							</th>
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
							<td>
							</td>													
						</tr>
						<tr>
							<th>
								<p class="text-warning">Mountain</p>
							</th>
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
							<td>
							</td>														
						</tr>
						<tr>
							<th>
								<p class="text-info">Sky</p>
							</th>
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