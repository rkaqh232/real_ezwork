"use strict";

// Class Definition



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
					/*email: {
						validators: {
							notEmpty: {
								message: 'Email is required'
							},
							emailAddress: {
								message: 'The value is not a valid email address'
							}
						}
					},*/
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
					bootstrap: new FormValidation.plugins.Bootstrap()
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
