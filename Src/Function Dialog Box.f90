subroutine dialog_function(dlgbox,function_code)
	use dflib
	use dialogm
	include 'resources.fd'
	type (dialog) dlgbox
	logical::test,pushed_state
	integer(4)::function_code
	test=dlginit(IDD_function,dlgbox)
	if (test==.false.) then
		print*,'failed to initialize dialog box'
		return
	end if
	test=dlgmodal(dlgbox)
	test=dlgget(dlgbox,IDC_e1,pushed_state)
	if (pushed_state) then
		function_code=1
	end if
	test=dlgget(dlgbox,IDC_e2,pushed_state)
	if (pushed_state) then
		function_code=2
	end if
	test=dlgget(dlgbox,IDC_e3,pushed_state)
	if (pushed_state) then
		function_code=3
	end if
	test=dlgget(dlgbox,IDC_e4,pushed_state)
	if (pushed_state) then
		function_code=4
	end if
	test=dlgget(dlgbox,IDC_e5,pushed_state)
	if (pushed_state) then
		function_code=5
	end if
	test=dlgget(dlgbox,IDC_e6,pushed_state)
	if (pushed_state) then
		function_code=6
	end if
	test=dlgget(dlgbox,IDC_e7,pushed_state)
	if (pushed_state) then
		function_code=7
	end if
	test=dlgget(dlgbox,IDC_e8,pushed_state)
	if (pushed_state) then
		function_code=8
	end if
	test=dlgget(dlgbox,IDC_e9,pushed_state)
	if (pushed_state) then
		function_code=9
	end if
	test=dlgget(dlgbox,IDC_e10,pushed_state)
	if (pushed_state) then
		function_code=10
	end if
	test=dlgget(dlgbox,IDC_e11,pushed_state)
	if (pushed_state) then
		function_code=11
	end if
	test=dlgget(dlgbox,IDC_e12,pushed_state)
	if (pushed_state) then
		function_code=12
	end if
	test=dlgget(dlgbox,IDC_e13,pushed_state)
	if (pushed_state) then
		function_code=13
	end if
	test=dlgget(dlgbox,IDC_e14,pushed_state)
	if (pushed_state) then
		function_code=14
	end if
	test=dlgget(dlgbox,IDC_e15,pushed_state)
	if (pushed_state) then
		function_code=15
	end if
	test=dlgget(dlgbox,IDC_e16,pushed_state)
	if (pushed_state) then
		function_code=16
	end if
	test=dlgget(dlgbox,IDC_e17,pushed_state)
	if (pushed_state) then
		function_code=17
	end if
	test=dlgget(dlgbox,IDC_e18,pushed_state)
	if (pushed_state) then
		function_code=18
	end if
	test=dlgget(dlgbox,IDC_e19,pushed_state)
	if (pushed_state) then
		function_code=19
	end if
	test=dlgget(dlgbox,IDC_e20,pushed_state)
	if (pushed_state) then
		function_code=20
	end if
	test=dlgget(dlgbox,IDC_e21,pushed_state)
	if (pushed_state) then
		function_code=21
	end if
	test=dlgget(dlgbox,IDC_e22,pushed_state)
	if (pushed_state) then
		function_code=22
	end if
	test=dlgget(dlgbox,IDC_e23,pushed_state)
	if (pushed_state) then
		function_code=23
	end if
	test=dlgget(dlgbox,IDC_e24,pushed_state)
	if (pushed_state) then
		function_code=24
	end if
	test=dlgget(dlgbox,IDC_e25,pushed_state)
	if (pushed_state) then
		function_code=25
	end if
	test=dlgget(dlgbox,IDC_e26,pushed_state)
	if (pushed_state) then
		function_code=26
	end if
	test=dlgget(dlgbox,IDC_e27,pushed_state)
	if (pushed_state) then
		function_code=27
	end if
	test=dlgget(dlgbox,IDC_e28,pushed_state)
	if (pushed_state) then
		function_code=28
	end if
	test=dlgget(dlgbox,IDC_e29,pushed_state)
	if (pushed_state) then
		function_code=29
	end if
	test=dlgget(dlgbox,IDC_e30,pushed_state)
	if (pushed_state) then
		function_code=30
	end if
end subroutine dialog_function
