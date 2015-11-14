subroutine dialog_Fractal_type(dlgbox,fractal_type_code)
	use dflib
	use dialogm
	include 'resources.fd'
	type (dialog) dlgbox
	logical::test,pushed_state
	integer(4)::fractal_type_code
	test=dlginit(IDD_fractal_type,dlgbox)
	if (test==.false.) then
		print*,'failed to initialize dialog box'
		return
	end if
	test=dlgmodal(dlgbox)
	test=dlgget(dlgbox,IDC_Julia,pushed_state)
	if (pushed_state) then
		fractal_type_code=10
	end if
	test=dlgget(dlgbox,IDC_mandelbort,pushed_state)
	if (pushed_state) then
		fractal_type_code=20
	end if
	test=dlgget(dlgbox,IDC_newton,pushed_state)
	if (pushed_state) then
		fractal_type_code=30
	end if
	test=dlgget(dlgbox,IDC_burningship,pushed_state)
	if (pushed_state) then
		fractal_type_code=40
	end if
end subroutine dialog_fractal_type
