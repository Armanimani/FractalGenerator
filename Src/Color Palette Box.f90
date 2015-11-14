subroutine dialog_color_palette(dlbox,Color_matrix,number_color)
	use dflib
	use dialogm
	include 'resources.fd'
	character(len=3)::text
	logical::test,keystate
	integer::Color_matrix(4,8),number,number_color
	type (dialog) dlgbox
	test=dlginit(IDD_Color_palette,dlgbox)
	if (test==.false.) then
		print*,'Failed to initialized dialog box'
		return
	end if
	test=dlgmodal(dlgbox)
!--------------color1------------------------
	test=dlgget(dlgbox,IDC_color1r,text)
	if (text/='    ') then
		read (text,*),number
		color_matrix(1,1)=number
	endif
	test=dlgget(dlgbox,IDC_color1g,text)
	if (text/='    ') then
		read (text,*),number
		color_matrix(2,1)=number
	endif
	test=dlgget(dlgbox,IDC_color1b,text)
	if (text/='    ') then
		read (text,*),number
		color_matrix(3,1)=number
	endif
	test=dlgget(dlgbox,IDC_color1p,text)
	if (text/='    ') then
		read (text,*),number
		color_matrix(4,1)=number
	endif
!--------------color 2-------------------------
	test=dlgget(dlgbox,IDC_color2r,text)
	if (text/='    ') then
		read (text,*),number
		color_matrix(1,2)=number
	else
		number_color=1
		return
	endif
	test=dlgget(dlgbox,IDC_color2g,text)
	if (text/='    ') then
		read (text,*),number
		color_matrix(2,2)=number
	endif
	test=dlgget(dlgbox,IDC_color2b,text)
	if (text/='    ') then
		read (text,*),number
		color_matrix(3,2)=number
	endif
	test=dlgget(dlgbox,IDC_color2p,text)
	if (text/='    ') then
		read (text,*),number
		color_matrix(4,2)=number
	endif
!--------------color 3-------------------------
	test=dlgget(dlgbox,IDC_color3r,text)
	if (text/='    ') then
		read (text,*),number
		color_matrix(1,3)=number
	else
		number_color=2
		return
	endif
	test=dlgget(dlgbox,IDC_color3g,text)
	if (text/='    ') then
		read (text,*),number
		color_matrix(2,3)=number
	endif
	test=dlgget(dlgbox,IDC_color3b,text)
	if (text/='    ') then
		read (text,*),number
		color_matrix(3,3)=number
	endif
	test=dlgget(dlgbox,IDC_color3p,text)
	if (text/='    ') then
		read (text,*),number
		color_matrix(4,3)=number
	endif
!--------------color 4-------------------------
	test=dlgget(dlgbox,IDC_color4r,text)
	if (text/='    ') then
		read (text,*),number
		color_matrix(1,4)=number
	else
		number_color=3
		return
	endif
	test=dlgget(dlgbox,IDC_color4g,text)
	if (text/='    ') then
		read (text,*),number
		color_matrix(2,4)=number
	endif
	test=dlgget(dlgbox,IDC_color4b,text)
	if (text/='    ') then
		read (text,*),number
		color_matrix(3,4)=number
	endif
	test=dlgget(dlgbox,IDC_color4p,text)
	if (text/='    ') then
		read (text,*),number
		color_matrix(4,4)=number
	endif
!--------------color 5-------------------------
	test=dlgget(dlgbox,IDC_color5r,text)
	if (text/='    ') then
		read (text,*),number
		color_matrix(1,5)=number
	else
		number_color=4
		return
	endif
	test=dlgget(dlgbox,IDC_color5g,text)
	if (text/='    ') then
		read (text,*),number
		color_matrix(2,5)=number
	endif
	test=dlgget(dlgbox,IDC_color5b,text)
	if (text/='    ') then
		read (text,*),number
		color_matrix(3,5)=number
	endif
	test=dlgget(dlgbox,IDC_color5p,text)
	if (text/='    ') then
		read (text,*),number
		color_matrix(4,5)=number
	endif
!--------------color 6-------------------------
	test=dlgget(dlgbox,IDC_color6r,text)
	if (text/='    ') then
		read (text,*),number
		color_matrix(1,6)=number
	else
		number_color=5
		return
	endif
	test=dlgget(dlgbox,IDC_color6g,text)
	if (text/='    ') then
		read (text,*),number
		color_matrix(2,6)=number
	endif
	test=dlgget(dlgbox,IDC_color6b,text)
	if (text/='    ') then
		read (text,*),number
		color_matrix(3,6)=number
	endif
	test=dlgget(dlgbox,IDC_color6p,text)
	if (text/='    ') then
		read (text,*),number
		color_matrix(4,6)=number
	endif
!--------------color 7-------------------------
	test=dlgget(dlgbox,IDC_color7r,text)
	if (text/='    ') then
		read (text,*),number
		color_matrix(1,7)=number
	else
		number_color=6
		return
	endif
	test=dlgget(dlgbox,IDC_color7g,text)
	if (text/='    ') then
		read (text,*),number
		color_matrix(2,7)=number
	endif
	test=dlgget(dlgbox,IDC_color7b,text)
	if (text/='    ') then
		read (text,*),number
		color_matrix(3,7)=number
	endif
	test=dlgget(dlgbox,IDC_color7p,text)
	if (text/='    ') then
		read (text,*),number
		color_matrix(4,7)=number
	endif
!--------------color 8-------------------------
	test=dlgget(dlgbox,IDC_color8r,text)
	if (text/='    ') then
		read (text,*),number
		color_matrix(1,8)=number
	else
		number_color=7
		return
	endif
	test=dlgget(dlgbox,IDC_color8g,text)
	if (text/='    ') then
		read (text,*),number
		color_matrix(2,8)=number
	endif
	test=dlgget(dlgbox,IDC_color8b,text)
	if (text/='    ') then
		read (text,*),number
		color_matrix(3,8)=number
	endif
	test=dlgget(dlgbox,IDC_color8p,text)
	if (text/='    ') then
		read (text,*),number
		color_matrix(4,8)=number
	endif
!---------------Preview------------------------
	test=dlgget(dlgbox,idc_preview,keystate)
	number_color=8
end subroutine Dialog_color_palette
	