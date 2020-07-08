
//dropdown 선택


$(function(){

    $(".dropdown-menu a").click(function(){

      $(".btn:first-child").text($(this).text());
      $(".btn:first-child").val($(this).text());

   });

});


/*//이메일 유효성검사
$(function(){
	
	var checkemail = false; 
	

	$("input:eq(21)").on('keyup', function(){
	
	$("#M_EMAIL").empty(); 
	
	//[A-Za-z0-9_]와 동일한 것이 \w
	//+는 1회 이상 반복을 의미합니다. {1,}와 동일합니다
	//\w+는 [A-Za-z0-9_]를 1개 이상 사용하라는 의미입니다
	
	var pattern = /\w+@\w+[.]\w{3}/;
	var email = $("input:eq(21)").val();
	
	if(!pattern.test(email)){
		
		alert("이메일 형식에 맞지 않습니다.");
		checkemail = false; 
	}else{
		
		alert("이메일 형식에 맞습니다.");
		checkemail=true; 
	}
}); //email keyup 이벤트 처리 끝 

});*/

//비밀번호 유효성 체크
function chkPW(){

	 var pw = $("#M_PASS").val();
	 var num = pw.search(/[0-9]/g);
	 var eng = pw.search(/[a-z]/ig);
	 var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
	 
	 if(pw.length < 4 || pw.length > 6){
		  alert("4자리 ~ 6자리 이내로 입력해주세요.");
		  
	 }else if(pw.search(/\s/) != -1){
		  alert("비밀번호는 공백 없이 입력해주세요.");
		  
	 }else if(eng > 0 || spe > 0 ){
		  alert("숫자만 입력해주세요.");
		 
	 }else {
		 KTUtil.scrollTop();
	 }
};
	 
	 


//달력 
var KTBootstrapDatepicker = function () {

	 var arrows;
	 if (KTUtil.isRTL()) {
	  arrows = {
	   leftArrow: '<i class="la la-angle-right"></i>',
	   rightArrow: '<i class="la la-angle-left"></i>'
	  }
	 } else {
	  arrows = {
	   leftArrow: '<i class="la la-angle-left"></i>',
	   rightArrow: '<i class="la la-angle-right"></i>'
	  }
	 }
}
var demos = function () {
	// enable clear button
	 $('#kt_datepicker_3, #kt_datepicker_3_validate').datepicker({
	   rtl: KTUtil.isRTL(),
	   todayBtn: "linked",
	   clearBtn: true,
	   todayHighlight: true,
	   templates: arrows
	  });

	  // enable clear button for modal demo
	  $('#kt_datepicker_3_modal').datepicker({
	   rtl: KTUtil.isRTL(),
	   todayBtn: "linked",
	   clearBtn: true,
	   todayHighlight: true,
	   templates: arrows
	  });

	
}


//EMP코드

 function empcode_error(){
	 alert("사원번호는 자동생성됩니다.");
 }

// 주소 API
  function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("M_ADDRESS").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
  

  
// 유효성검사   
  "use strict";

//Class Definition



var KTAddUser = function () {
	// Private Variables
	var _wizardEl;
	var _formEl;
	var _wizard;
	var _avatar;
	var _validations = [];

	// Private Functions
	var _initWizard = function () {
		// Initialize form wizard
		_wizard = new KTWizard(_wizardEl, {
			startStep: 1, // initial active step number 시작페이지
			clickableSteps: true  // allow step clicking
		});

		// Validation before going to next page
		_wizard.on('beforeNext', function (wizard) {
			// 다음단계로 못가...
			_wizard.stop();

			// 유효성검사 폼
			var validator = _validations[wizard.getStep() - 1]; // get validator for currnt step
			validator.validate().then(function (status) {
		        if (status == 'Valid') {
					_wizard.goNext();
					KTUtil.scrollTop();
				} else {
					Swal.fire({
		                text: "필수 항목을 모두 입력해주세요.",
		                icon: "error",
		                buttonsStyling: false,
		                confirmButtonText: "확인",
						customClass: {
							confirmButton: "btn font-weight-bold btn-light"
						}
		            }).then(function() {
						KTUtil.scrollTop();
					});
				}
		    });
		});

		// Change Event
		_wizard.on('change', function (wizard) {
			KTUtil.scrollTop();
		});
	}

	var _initValidations = function () {
		// Init form validation rules. For more info check the FormValidation plugin's official documentation:https://formvalidation.io/

		// Validation Rules For Step 1
		_validations.push(FormValidation.formValidation(
			_formEl,
			{
				fields: {
					firstname: {
						validators: {
							notEmpty: {
								message: '사원번호는 필수항목입니다. '
							}
						}
					},
					lastname: {
						validators: {
							notEmpty: {
								message: '계약코드는 필수항목입니다.'
							}
						}
					},
					companyname: {
						validators: {
							notEmpty: {
								message: '부서코드는 필수항목입니다.'
							}
						}
					},
					level: {
						validators: {
							notEmpty: {
								message: '직급코드는 필수항목입니다.'
							}
						}
					},
					password: {
						validators: {
							notEmpty: {
								message: '비밀번호는 필수항목입니다.'
							}
						}
					},
					name: {
						validators: {
							notEmpty: {
								message: '성명은 필수항목입니다.'
							}
						}
					},
					/*pri_code: {
						validators: {
							notEmpty: {
								message: '주민등록번호는 필수항목입니다.'
							}
						}
					},*/
					/*birth: {
						validators: {
							notEmpty: {
								message: '생년월일은 필수항목입니다.'
							}
						}
					},*/
					army: {
						validators: {
							notEmpty: {
								message: '군필 여부 선택은 필수항목입니다.'
							}
						}
					},
					
					phone: {
						validators: {
							notEmpty: {
								message: '핸드폰번호는 필수항목입니다.'
							},
							/*phone: {
								country: 'US',
								message: 'The value is not a valid US phone number. (e.g 5554443333)'
							}*/
						}
					},
					email: {
						validators: {							
							emailAddress: {
								message: '이메일 형식에 맞지 않습니다.'
							}
						}
					},
					companywebsite: {
						validators: {
							notEmpty: {
								message: 'Website URL is required'
							}
						}
					}
				},
				plugins: {
					trigger: new FormValidation.plugins.Trigger(),
					bootstrap: new FormValidation.plugins.Bootstrap()
				}
			}
		));

		_validations.push(FormValidation.formValidation(
			_formEl,
			{
				fields: {
					// Step 2
					communication: {
						validators: {
							choice: {
								min: 1,
								message: 'Please select at least 1 option'
							}
						}
					},
					language: {
						validators: {
							notEmpty: {
								message: 'Please select a language'
							}
						}
					},
					timezone: {
						validators: {
							notEmpty: {
								message: 'Please select a timezone'
							}
						}
					}
				},
				plugins: {
					trigger: new FormValidation.plugins.Trigger(),
					bootstrap: new FormValidation.plugins.Bootstrap()
				}
			}
		));

		_validations.push(FormValidation.formValidation(
			_formEl,
			{
				fields: {
					address1: {
						validators: {
							notEmpty: {
								message: 'Address is required'
							}
						}
					},
					/*postcode: {
						validators: {
							notEmpty: {
								message: 'Postcode is required'
							}
						}
					},*/
					city: {
						validators: {
							notEmpty: {
								message: 'City is required'
							}
						}
					},
					state: {
						validators: {
							notEmpty: {
								message: 'state is required'
							}
						}
					},
					country: {
						validators: {
							notEmpty: {
								message: 'Country is required'
							}
						}
					},
				},
				plugins: {
					   trigger: new FormValidation.plugins.Trigger(),
					   // Bootstrap Framework Integration
					   bootstrap: new FormValidation.plugins.Bootstrap(),
					   // Validate fields when clicking the Submit button
					   submitButton: new FormValidation.plugins.SubmitButton(),
					            // Submit the form when all fields are valid
					   defaultSubmit: new FormValidation.plugins.DefaultSubmit(),
					  }
				
			}
		));
	}

	var _initAvatar = function () {
		_avatar = new KTImageInput('kt_user_add_avatar');
	}

	return {
		// public functions
		init: function () {
			_wizardEl = KTUtil.getById('kt_wizard');
			_formEl = KTUtil.getById('kt_form');

			_initWizard();
			_initValidations();
			_initAvatar();
		}
	};
}();

jQuery(document).ready(function () {
	KTAddUser.init();
});

  
  