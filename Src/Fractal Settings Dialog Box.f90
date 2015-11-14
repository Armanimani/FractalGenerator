subroutine dialog_fractal_settings(dlgbox,c,step,blowup,max_irritation,color_create,zarib)
	use dflib
	use dialogm
	include 'resources.fd'
	type (dialog) dlgbox
	logical::test,pushed_state,color_create
	character(len=20)::text,space='                        '
	integer(4)::max_irritation
	complex(8)::c
	real(8)::step,c_x,c_y,blowup,zarib
	test=dlginit(IDD_Fractal_settings,dlgbox)
	if (test==.false.) then
		print*,'failed to initialize dialog box'
		return
	end if
	test=dlgmodal(dlgbox)
	test=dlgget(dlgbox,IDC_c_x,text)
	if (text/=space) then
		read (text,*),c_x
	else
		c_x=0
	endif
	test=dlgget(dlgbox,IDC_c_y,text)
	if (text/=space) then
		read (text,*),c_y
	else 
		c_y=0
	endif
	test=dlgget(dlgbox,IDC_blowup,text)
	if (text/=space) then
		read (text,*),blowup
	else
		blowup=2
	endif
	test=dlgget(dlgbox,IDC_magnify_step,text)
	if (text/=space) then
		read (text,*),step
	else
		step=2
	endif
	test=dlgget(dlgbox,IDC_Max_irritation,text)
	if (text/=space) then
		read (text,*),max_irritation
	else
		max_irritation=1000
	endif
	test=dlgget(dlgbox,IDC_Newton_zarib,text)
	if (text/=space) then
		read (text,*),zarib
	else
		zarib=1
	endif
	test=dlgget(dlgbox,IDC_Create_palette,pushed_state)
	if (pushed_state) then
		color_create=.false.
	else 
		color_create=.true.
	endif
	c=cmplx(c_x,c_y)
end subroutine dialog_fractal_settings


