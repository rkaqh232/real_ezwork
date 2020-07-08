
$(document).ready(function(){
	//등록 버튼 클릭할 때 이벤트 부분
	$("form").submit(function(){
		
		if($.trim($("input").eq(1).val()) == ""){
			Swal.fire({
                text: "제목을 입력해주세요.",
                icon: "error",
                buttonsStyling: false,
                confirmButtonText: "확인",
				customClass: {
					confirmButton: "btn font-weight-bold btn-light"
				}
            })
			$("input:eq(1)").focus();
			return false;
		}
		if($.trim($("textarea").val()) == ""){
			Swal.fire({
                text: "내용을 입력해주세요.",
                icon: "error",
                buttonsStyling: false,
                confirmButtonText: "확인",
				customClass: {
					confirmButton: "btn font-weight-bold btn-light"
				}
            })
			$("textarea").focus();
			return false;
		}
		if($.trim($("input").eq(2).val()) == ""){
			Swal.fire({
                text: "비밀번호를 입력해주세요.",
                icon: "error",
                buttonsStyling: false,
                confirmButtonText: "확인",
				customClass: {
					confirmButton: "btn font-weight-bold btn-light"
				}
            })
			$("input:eq(2)").focus();
			return false;
		}
		
		
	}); //submit end
	
	$("#upfile").change(function(){
		var inputfile = $(this).val().split('\\');
		$('#filevalue').text(inputfile[inputfile.length - 1]);
	});
})