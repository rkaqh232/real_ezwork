$(function(){
	
	$("form").submit(function(){
		var stime = document.getElementById("stime").value;
		var etime = document.getElementById("etime").value;
		if(parseInt(stime)>=parseInt(etime)){
			alert('예약 시간을 확인하세요.');
			return false;
		}
	})
	
})