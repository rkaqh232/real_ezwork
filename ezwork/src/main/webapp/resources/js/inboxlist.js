function go(page){
	var limit = $('#viewcount').val();
	var data = "limit=" + limit + "&start=ajax&page=" + page;
	ajax(data);
}

function setPaging(href, digit){
	output += "<li class=page-item>";
	gray="";
	if(href==""){
		gray=" gray";
	}
	anchor = "<a class='page-link" + gray + "'" + href + ">" + digit + "</a></li>";
	output += anchor;
}

function ajax(sdata){
	output="";
	$.ajax({
		type : "POST",
		data : sdata,
		url : "MailListAjax.mail",
		dataType = "json",
		cache : false,
		success : function(data){
			$("#viewcount").val(data.limit);
			
			if(data.listcount > 0){
				$("tbody").remove();
				var num = data.listcount - (data.page -1) * data.limit;
				output = "<tbody>";
				$(data.boardlist).each(
					function(index, item){
						output += '<tr><td>' + (num--) + '</td>'
						blank_count = item.board_RE_LEV*2 + 1;
						blank = '&nbsp;';
						for (var i = 0; i < blank_count; i++) {
							blank += '&nbsp;&nbsp;';
						}
						img="";
						if (item.board_RE_LEV > 0) {
							img="<img src='resources/image/line.gif'>";
						}
							
						output +=  "<td><div>" + blank + img
						output += ' <a href="BoardDetailAction.bo?num='
							     + item.board_NUM + '&page='
								 + data.page + '">'
						output += item.board_SUBJECT + '</a></div></td>'
						output += '<td><div>' + item.board_NAME+'</div></td>'
						output += '<td><div>' + item.board_DATE+'</div></td>'
						output += '<td><div>' + item.board_READCOUNT
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

$(function(){
	$("#viewcount").change(function(){
		go(1);
	});
})