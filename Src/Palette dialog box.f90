subroutine dialog_palette_box(dlgbox,palette_code)
	use dflib
	use dialogm
	include 'resources.fd'
	type (dialog) dlgbox
	logical::test,pushed_state
	integer(4)::palette_code
	test=dlginit(IDD_palette,dlgbox)
	if (test==.false.) then
		print*,'failed to initialize dialog box'
		return
	end if
	test=dlgmodal(dlgbox)
	test=dlgget(dlgbox,IDC_Palette1,pushed_state)
	if (pushed_state) then
		palette_code=1
	end if
	test=dlgget(dlgbox,IDC_Palette2,pushed_state)
	if (pushed_state) then
		palette_code=2
	end if
	test=dlgget(dlgbox,IDC_Palette3,pushed_state)
	if (pushed_state) then
		palette_code=3
	end if
	test=dlgget(dlgbox,IDC_Palette4,pushed_state)
	if (pushed_state) then
		palette_code=4
	end if
	test=dlgget(dlgbox,IDC_Palette5,pushed_state)
	if (pushed_state) then
		palette_code=5
	end if
	test=dlgget(dlgbox,IDC_Palette6,pushed_state)
	if (pushed_state) then
		palette_code=6
	end if
	test=dlgget(dlgbox,IDC_Palette7,pushed_state)
	if (pushed_state) then
		palette_code=7
	end if
	test=dlgget(dlgbox,IDC_Palette8,pushed_state)
	if (pushed_state) then
		palette_code=8
	end if
	test=dlgget(dlgbox,IDC_Palette9,pushed_state)
	if (pushed_state) then
		palette_code=9
	end if
	test=dlgget(dlgbox,IDC_Palette10,pushed_state)
	if (pushed_state) then
		palette_code=10
	end if
	test=dlgget(dlgbox,IDC_Palette11,pushed_state)
	if (pushed_state) then
		palette_code=11
	end if
	test=dlgget(dlgbox,IDC_Palette12,pushed_state)
	if (pushed_state) then
		palette_code=12
	end if
	test=dlgget(dlgbox,IDC_Palette13,pushed_state)
	if (pushed_state) then
		palette_code=13
	end if
	test=dlgget(dlgbox,IDC_Palette14,pushed_state)
	if (pushed_state) then
		palette_code=14
	end if
	test=dlgget(dlgbox,IDC_Palette15,pushed_state)
	if (pushed_state) then
		palette_code=15
	end if
	test=dlgget(dlgbox,IDC_Palette16,pushed_state)
	if (pushed_state) then
		palette_code=16
	end if
	test=dlgget(dlgbox,IDC_Palette17,pushed_state)
	if (pushed_state) then
		palette_code=17
	end if
	test=dlgget(dlgbox,IDC_Palette18,pushed_state)
	if (pushed_state) then
		palette_code=18
	end if	
	test=dlgget(dlgbox,IDC_Palette19,pushed_state)
	if (pushed_state) then
		palette_code=19
	end if
	test=dlgget(dlgbox,IDC_Palette20,pushed_state)
	if (pushed_state) then
		palette_code=20
	end if
	test=dlgget(dlgbox,IDC_Palette21,pushed_state)
	if (pushed_state) then
		palette_code=21
	end if
	test=dlgget(dlgbox,IDC_Palette22,pushed_state)
	if (pushed_state) then
		palette_code=22
	end if
	test=dlgget(dlgbox,IDC_Palette23,pushed_state)
	if (pushed_state) then
		palette_code=23
	end if
	test=dlgget(dlgbox,IDC_Palette24,pushed_state)
	if (pushed_state) then
		palette_code=24
	end if
	test=dlgget(dlgbox,IDC_Palette25,pushed_state)
	if (pushed_state) then
		palette_code=25
	end if
	test=dlgget(dlgbox,IDC_Palette26,pushed_state)
	if (pushed_state) then
		palette_code=26
	end if
	test=dlgget(dlgbox,IDC_Palette27,pushed_state)
	if (pushed_state) then
		palette_code=27
	end if
	test=dlgget(dlgbox,IDC_Palette28,pushed_state)
	if (pushed_state) then
		palette_code=28
	end if
	test=dlgget(dlgbox,IDC_Palette29,pushed_state)
	if (pushed_state) then
		palette_code=29
	end if
	test=dlgget(dlgbox,IDC_Palette30,pushed_state)
	if (pushed_state) then
		palette_code=30
	end if
	call dlguninit(dlgbox)
end subroutine dialog_palette_box