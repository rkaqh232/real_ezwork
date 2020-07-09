$(function(){
	go(1);
})

function go(page){
	var limit = 10;
	var id = document.getElementById('SENDER').value;
	var data = "limit=" + limit + "&start=ajax&page=" + page + "&id=" + id ;
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
		url : "MailTempAjax.mail",
		dataType : "json",
		cache : false,
		success : function(data){
			var totalData = data.listcount;			
			if(totalData > 0){
				var num = totalData - (data.page -1) * data.limit;
				output = "<tbody>";
				$(data.maillist).each(
					function(index, item){							
						output += "<tr><td><p><label class='checkbox'>"
						output += "<input type='checkbox'/>"
						output += ' <span></span></label></p></td><td><p class="text-danger font-size-lg"> 임시보관 </p></td>'
						output += '<td><div><p class="font-size-lg">' + item.mail_SUBJECT +'</p></div></td>'
						output += '<td><div><p class="font-size-lg">' + item.mail_DATE+'</p></div></td></tr>'
					})
				output += "</tbody>"
				$('table').append(output)//table 완성
				
				$(".pagination").empty(); //페이징 처리 영역 내용 제거
				output = "";
				
				digit = '<i class="ki ki-bold-arrow-back icon-xs"></i>'; //이전 버튼							
				href="";	
				if (data.page > 1) {
					href = 'href=javascript:go(' + (data.page - 1) + ')';
				}
				setPaging(href, digit);
				
				for (var i = data.startpage; i <= data.endpage; i++) {
					digit = i;
					href="";
					if (i != data.page) {
						href = 'href=javascript:go(' + i + ')';
					} 
					setPaging( href, digit);
				}
				
				digit = '<i class="ki ki-bold-arrow-next icon-xs"></i>'; //다음 버튼
				href="";
				if (data.page < data.maxpage) {
					href = 'href=javascript:go(' + (data.page + 1) + ')';
				} 
				setPaging( href, digit);
				$('.pagination').append(output)
			}//if(data.listcount) end
			else if(data.listcount==0){
				output = "<tr><th colspan='4'><h3>임시 보관된 메일이 없습니다.</h3></th></tr>";
				$('table').append(output)
			}			
		}, //success end
		error : function(){
			console.log('에러')
		}
	})
}