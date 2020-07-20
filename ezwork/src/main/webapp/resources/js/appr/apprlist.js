$(function(){
	go(1);
	
	$("#upfile").change(function(){
		var inputfile = $(this).val().split('\\');
		$("#filevalue").text(inputfile[inputfile.length-1]);
	})
	
	$("#allcheck").click(function(){
		$('input:checkbox').prop('checked',this.checked);
	})
	
})

function go(page){
	var limit = 10;
	//var id = document.getElementById('SENDER').value;
	var data = "limit=" + limit + "&start=ajax&page=" + page  ;
	ajax(data);
}

function setPaging(href, digit){
	output += '';
	active="";
	if(href==""){
		active=" btn-hover-info active";
	}
	anchor = "<a class='btn btn-icon btn-sm btn-light mr-2 my-1"+ active + "'" + href + ">" + digit + "</a></li>";
	output += anchor;
}

function ajax(sdata){
	output="";
	$.ajax({
		type : "POST",
		data : sdata,
		url : "ApprListAjax.appr",
		dataType : "json",
		cache : false,
		success : function(data){
			var totalData = data.listcount;			
			if(totalData > 0){
				var num = totalData - (data.nowpage -1) * data.limit;
				output = "<tbody>";
				$(data.apprlist).each(
					function(index, item){
						var stat="",val="";
						switch(item.appr_STAT){
						case 0:
							stat = '업무';
							break;
						case 1:
							stat = 'test';
							break;
						}
						
						switch(item.appr_VAL){
						case 0:
							val = '승인대기';
							break;
						case 1:
							val = '승인(1차)';
							break;
						case 2:
							val = '승인(2차)';
							break;
						case 3:
							val = '승인(최종)';
							break;
						case 4:
							val = '반려';
							break;
						}
						var comp_date='';
						if(item.appr_COMP_DATE==null){
							comp_date='-';
						}else{
							comp_date = item.appr_COMP_DATE.substring(0,10);
						}
						
						
						output += '<tr><td><div><p class="font-size-lg">'+item.appr_CODE + '</p></div></td>'
						output += '<td><div><p class="font-size-lg">'+'<span class="label label-lg font-weight-bold label-light-info label-inline">'
						output += '인사팀</span>'+ item.m_CODE + '</p></div></td>'
						
						output += '<td><div><p class="font-size-lg">' + '<a href="ApprDetailAction.appr?num='
								+item.appr_CODE+'&page=' + data.nowpage+'">'+ item.appr_TITLE +'</a></p></div></td>'
						output += '<td><div><p class="font-size-lg">'+stat+'</p></div></td>'
						output += '<td><div><p class="font-size-lg">' + item.appr_DATE.substring(0,10)+'</p></div></td>'
						output += '<td><div><p class="font-size-lg">' + comp_date +'</p></div></td>'
						output += '<td><div><p class="font-size-lg">'+val + '</p></div></td>'
					})
				output += "</tbody>"
				$('table').append(output)//table 완성
				
				$(".pagination").empty(); //페이징 처리 영역 내용 제거
				output = "";
				
				digit = '<i class="ki ki-bold-arrow-back icon-xs"></i>'; //이전 버튼							
				href="";	
				if (data.nowpage > 1) {
					href = 'href=javascript:go(' + (data.nowpage - 1) + ')';
				}
				setPaging(href, digit);
				
				for (var i = data.startpage; i <= data.endpage; i++) {
					digit = i;
					href="";
					if (i != data.nowpage) {
						href = 'href=javascript:go(' + i + ')';
					} 
					setPaging( href, digit);
				}
				
				digit = '<i class="ki ki-bold-arrow-next icon-xs"></i>'; //다음 버튼
				href="";
				if (data.page < data.maxpage) {
					href = 'href=javascript:go(' + (data.nowpage + 1) + ')';
				} 
				setPaging( href, digit);
				$('.pagination').append(output)
			}//if(data.listcount) end
			else if(totalData==0){
				output = "<tr><th colspan='4'><h3>받은 메일이 없습니다.</h3></th></tr>";
				$('table').append(output)
			}			
		}, //success end
		error : function(){
			console.log('에러')
		}
	})
}