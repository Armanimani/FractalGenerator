subroutine palettes(n,color_matrix,number_color)
	integer(4)::color_matrix(1:4,1:8),a(1:20)
	integer(4)::n
	if (n==1) then 
	a=(/168,255,255,1,181,255,255,64,222,255,255,128,166,229,173,192,120,159,106,256/)
	endif
	if (n==2) then 
		a=(/0,18,108,1,0,28,121,64,0,65,189,128,37,129,235,192,124,197,255,256/)
	endif
	if (n==3) then 
		a=(/15,52,37,1,29,113,89,64,53,200,182,128,146,255,228,192,52,170,132,256/)
	endif
	if (n==4) then 
		a=(/121,0,0,1,178,0,86,64,210,53,170,128,228,150,244,192,122,203,4,256/)
	endif
	if (n==5) then 
		a=(/115,41,0,1,176,66,10,64,253,255,175,128,237,236,172,192,195,158,96,256/)
	endif
	if (n==6) then 
		a=(/74,25,45,1,219,0,0,64,255,255,255,128,245,243,208,192,212,157,129,256/)
	endif
	if (n==7) then 
		a=(/0,0,208,1,0,0,255,64,0,14,97,128,125,145,243,192,126,142,159,256/)
	endif
	if (n==8) then 
		a=(/92,48,10,1,186,103,0,64,254,151,0,128,255,246,114,192,176,128,153,256/)
	endif
	if (n==9) then 
		a=(/41,31,51,1,78,63,107,64,57,75,185,128,177,154,14,192,162,116,187,256/)
	endif
	if (n==10) then 
		a=(/18,4,5,1,124,8,11,64,178,41,40,128,227,187,175,192,187,157,96,256/)
	endif
	if (n==11) then 
		a=(/197,208,220,1,255,255,255,64,254,255,255,128,223,237,244,192,37,98,163,256/)
	endif
	if (n==12) then 
		a=(/15,8,8,1,6,18,109,64,0,25,214,128,156,243,255,192,0,109,254,256/)
	endif
	if (n==13) then 
		a=(/10,3,0,1,46,43,7,64,52,99,7,128,0,90,180,192,80,179,186,256/)
	endif
	if (n==14) then 
		a=(/255,176,0,1,255,255,255,64,255,255,255,128,210,216,239,192,96,83,113,256/)
	endif
	if (n==15) then 
		a=(/110,110,110,1,200,200,200,64,255,255,255,128,236,241,239,192,156,161,158,256/)
	endif
	if (n==16) then 
		a=(/30,25,31,1,119,115,116,64,67,18,79,128,239,237,239,192,136,143,162,256/)
	endif
	if (n==17) then 
		a=(/2,2,32,1,42,47,55,64,73,88,121,128,249,253,255,192,72,93,176,256/)
	endif
	if (n==18) then 
		a=(/11,16,15,1,47,50,32,64,106,103,76,128,195,228,211,192,170,156,103,256/)
	endif
	if (n==19) then 
		a=(/111,0,10,1,133,0,54,64,44,0,1,128,44,201,0,192,255,45,100,256/)
	endif
	if (n==20) then 
		a=(/23,23,23,1,56,56,56,64,112,112,112,128,206,206,206,192,255,255,255,256/)
	endif
	if (n==21) then 
		a=(/96,79,63,1,195,206,186,64,255,255,253,128,227,249,214,192,155,166,142,256/)
	endif
	if (n==22) then 
		a=(/0,0,112,1,0,52,82,64,0,39,193,128,0,0,215,192,0,222,175,256/)
	endif
	if (n==23) then 
		a=(/38,0,0,1,111,0,0,64,87,94,83,128,212,0,0,192,209,207,168,256/)
	endif
	if (n==24) then 
		a=(/1,0,1,1,31,49,87,64,0,120,27,128,0,209,0,192,143,50,176,256/)
	endif
	if (n==25) then 
		a=(/0,125,123,1,88,40,40,64,0,255,255,128,0,212,216,192,154,126,122,256/)
	endif
	if (n==26) then 
		a=(/50,40,15,1,110,70,42,64,188,48,44,128,228,167,154,192,195,134,116,256/)
	endif
	if (n==27) then 
		a=(/30,128,10,1,107,40,0,64,200,20,0,128,255,198,0,192,54,188,0,256/)
	endif
	if (n==28) then 
		a=(/0,0,255,1,0,0,238,64,135,150,255,128,255,255,185,192,198,186,107,256/)
	endif
	if (n==29) then 
		a=(/0,7,100,1,32,107,203,64,237,255,255,128,255,170,0,192,0,2,0,256/)
	endif
	if (n==30) then 
		a=(/0,0,89,1,19,10,198,64,158,48,221,128,212,164,255,192,10,105,255,256/)
	endif
	number_color=5
	color_matrix(1,1)=a(1)
	color_matrix(2,1)=a(2)
	color_matrix(3,1)=a(3)
	color_matrix(4,1)=a(4)
	color_matrix(1,2)=a(5)
	color_matrix(2,2)=a(6)
	color_matrix(3,2)=a(7)
	color_matrix(4,2)=a(8)
	color_matrix(1,3)=a(9)
	color_matrix(2,3)=a(10)
	color_matrix(3,3)=a(11)
	color_matrix(4,3)=a(12)
	color_matrix(1,4)=a(13)
	color_matrix(2,4)=a(14)
	color_matrix(3,4)=a(15)
	color_matrix(4,4)=a(16)
	color_matrix(1,5)=a(17)
	color_matrix(2,5)=a(18)
	color_matrix(3,5)=a(19)
	color_matrix(4,5)=a(20)

end subroutine palettes