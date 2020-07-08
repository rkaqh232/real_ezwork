$(function(){
	go(1);
})

function go(page){
	var limit = 10;
	var data = "limit=" + limit + "&start=ajax&page=" + page;
	ajax(data);
}

function setPaging(href, digit){
	output += '<a class="btn btn-icon btn-sm border-0 btn-hover-primary mr-2 my-1">';
	active="";
	if(href==""){
		active=" active";
	}
	anchor = "<a class='page-link" + active + "'" + href + ">" + digit + "</a></li>";
	output += anchor;
}

function ajax(sdata){
	output="";
	$.ajax({
		type : "POST",
		data : sdata,
		url : "MailListAjax.mail",
		dataType : "json",
		cache : false,
		success : function(data){
			var totalData = data.listcount;
			$("#viewcount").val(data.limit);
			
			if(totalData > 0){
				$("tbody").remove();
				var num = totalData - (data.page -1) * data.limit;
				output = "<tbody>";
				$(data.maillist).each(
					function(index, item){							
						output +=  "<td><div>"
						output += ' <a href="#'
							     + item.MAIL_NUM + '&page='
								 + data.page + '">'
						output += item.MAIL_SUBJECT + '</a></div></td>'
						output += '<td><div>' + item.MAIL_SENDER+'</div></td>'
						output += '<td><div>' + item.MAIL_DATE+'</div></td>'
						output += '<td><div>' + item.MAIL_RCHECK
								+ '</div></td></tr>'
					})
				output += "</tbody>"
				$('table').append(output)//table 완성
				
				$(".pagination").empty(); //페이징 처리 영역 내용 제거
				output = "";
				
				digit = '이전&nbsp;'
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
				
				digit = '다음&nbsp;';
				href="";
				if (data.page < data.maxpage) {
					href = 'href=javascript:go(' + (data.page + 1) + ')';
				} 
				setPaging( href, digit);

				$('.pagination').append(output)
			}//if(data.listcount) end
			
		}, //success end
		error : function(){
			console.log('에러')
		}
	})
}