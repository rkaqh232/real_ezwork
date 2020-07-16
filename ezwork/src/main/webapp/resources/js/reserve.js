$(function(){
	
	$("form").submit(function(){
		/*
		var stime = document.getElementById("stime").value;
		var etime = document.getElementById("etime").value;
		console.log($('form').serialize());
		if(parseInt(stime)>=parseInt(etime)){
			alert('예약 시간을 확인하세요.');
			return false;
		}*/
	})
	
	var date = new Date();
	var today = date.getFullYear() + "-" + (date.getMonth()+1) + "-" + date.getDate();
	document.getElementById("today").innerHTML=today;
	ajax();
	
	function ajax(){
		$.ajax({
			type : "POST",
			url  : "meeting.res",
			dataType : "json",
			cache : false,
			success : function(data){
				$(data.list).each(
					function(index, item){
						if(item.RNAME=="forest"){
							var output = "<span class='label label-success label-inline mr-2'>"
							output += item.user_NAME + '</span>'
							$('#f'+item.MTIME).append(output);
						}
					})
			},
			error : function(){
				console.log('meeting.res : ajax 에러')
			}
		})
	}
})

