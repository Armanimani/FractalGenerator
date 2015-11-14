use dflib
use dialogm
logical::status,color_create,burn=.false.
integer(4)::color_matrix(4,8),function_matrix(0:100),fractal_type_code,palette_code
integer(4)::x_mouse,y_mouse,color(1:256),res_x,res_y,ir,max_irritation,coord_x,coord_y,function_code
real(8)::i,j,step,blowup,x,y,zoom,zarib
complex(8)::z,c,t,d_f
type (xycoord) origin
type (dialog) dlgbox
type (windowconfig) wc
!************************Main Program*****************************
! initializing screen resolution							
call dialog_res(dlgbox,res_x,res_y)																		
wc%numxpixels=res_x											
wc%numypixels=res_y	
	wc%numtextcols = -1
	wc%numtextrows = -1
	wc%numcolors   = -1
	wc%title= "This is a test"C
	wc%fontsize = #0008000C										
status=setwindowconfig(wc)
call setvieworg(int(res_x/2),int(res_y/2),origin)		
!----------------------Color Palette Generator--------------------
call dialog_Fractal_type(dlgbox,fractal_type_code)
call dialog_function(dlgbox,function_code)
call dialog_fractal_settings(dlgbox,c,step,blowup,max_irritation,color_create,zarib)
print*,color_create
if (color_create) then
	call dialog_palette_box(dlgbox,palette_code)
	call palettes(palette_code,color_matrix,number_color)
else 
	call dialog_color_palette(dlgbox,color_matrix,number_color)
end if
call color_palette(number_color,Color_matrix,color)						
!-------------------------Fractal Type---------------------------------
if (fractal_type_code==10) then
	goto 10
else if (fractal_type_code==20) then
	goto 20
else if (fractal_type_code==30) then
	goto 30
else if (fractal_type_code==40) then
	goto 40 
end if 
!-------------------------Julia Set------------------------------------
10 zoom=step
coord_x=0
coord_y=0
do 
	coord_x=coord_x+x_mouse*zoom
	coord_y=coord_y+y_mouse*zoom
	zoom=zoom/step
	call clearscreen($gclearscreen)
	do i=-res_x/2,res_x/2
		do j=-res_y/2,res_y/2
			z=cmplx((i*zoom+coord_x)/100.,(j*zoom+coord_y)/100.)
			ir=0
			a:do 
				call f(z,c,t,burn,function_code)
				ir=ir+1
				call im_re(t,x,y)
				e=snormal(x,y)					
				if((ir>max_irritation).or.(e>blowup)) then
					exit a
				endif
				z=t
			enddo a
			status = setpixelrgb(i,j,color(mod(ir,256)+1))
		enddo
	enddo	
result=waitonmouseevent(mouse$lbuttondown,keystate,x_mouse,y_mouse)
l=l+1
x_mouse=x_mouse-res_x/2
y_mouse=y_mouse-res_y/2
end do
!------------------------Mandelbort Set----------------------------
20 zoom=step
coord_x=0
coord_y=0
do 
	coord_x=coord_x+x_mouse*zoom
	coord_y=coord_y+y_mouse*zoom
	zoom=zoom/step
	call clearscreen($gclearscreen)
	do i=-res_x/2,res_x/2
		do j=-res_y/2,res_y/2
			c=cmplx((i*zoom+coord_x)/100.,(j*zoom+coord_y)/100.)
			ir=0
			z=0
			b:do 
				call f(z,c,t,burn,function_code)
				ir=ir+1
				call im_re(t,x,y)
				e=snormal(x,y)					
				if((ir>max_irritation).or.(e>blowup)) then
					exit b
				endif
				z=t
			enddo b
			status = setpixelrgb(i,j,color(mod(ir,256)+1))
		enddo
	enddo	
	result=waitonmouseevent(mouse$lbuttondown,keystate,x_mouse,y_mouse)
	x_mouse=x_mouse-res_x/2
	y_mouse=y_mouse-res_y/2
end do
!------------------------Newton Set--------------------------------
30 zoom=step
coord_x=0
coord_y=0
do 
	coord_x=coord_x+x_mouse*zoom
	coord_y=coord_y+y_mouse*zoom
	zoom=zoom/step
	call clearscreen($gclearscreen)
	do i=-res_x/2,res_x/2
		do j=-res_y/2,res_y/2
			z=cmplx((i*zoom+coord_x)/100.,(j*zoom+coord_y)/100.)
			ir=0
			hh:do 
				call f(z,c,t,burn,function_code)
				ir=ir+1
				call im_re(t,x,y)
				e=snormal(dble(x),dble(y))					
				if((ir>max_irritation).or.(e>blowup)) then
					exit hh
				endif
				if (t==0) then 
					t=1
				end if
				call df(z,c,d_f,function_code)
				z=z-zarib*d_f/t
			enddo hh
			status = setpixelrgb(i,j,color(mod(ir,256)+1))
		enddo
	enddo	
	result=waitonmouseevent(mouse$lbuttondown,keystate,x_mouse,y_mouse)
	x_mouse=x_mouse-res_x/2
	y_mouse=y_mouse-res_y/2
end do
!------------------------Burning Ship----------------------------
40 zoom=step
burn=.true.
do 
	coord_x=coord_x+x_mouse*zoom
	coord_y=coord_y+y_mouse*zoom
	zoom=zoom/step
	call clearscreen($gclearscreen)
	do i=-res_x/2,res_x/2
		do j=-res_y/2,res_y/2
			c=cmplx((i*zoom+coord_x)/100.,(j*zoom+coord_y)/100.)
			ir=0
			z=0
			bs:do 
				call f(z,c,t,burn,function_code)
				ir=ir+1
				call im_re(t,x,y)
				e=snormal(x,y)					
				if((ir>max_irritation).or.(e>blowup)) then
					exit bs
				endif
				z=t
			enddo bs
			status = setpixelrgb(i,j,color(mod(ir,256)+1))
		enddo
	enddo	
	result=waitonmouseevent(mouse$lbuttondown,keystate,x_mouse,y_mouse)
	x_mouse=x_mouse-res_x/2
	y_mouse=y_mouse-res_y/2
end do
contains
!***********************Sub Programs******************************
	subroutine im_re(a,re,im)
		complex(8)::a
		real(8)::im,re
		im=aimag(a)
		re=real(a)
	end subroutine im_re
!-----------------------------------------------------------------
	function snormal(b,c)
		real(8)::snormal,b,c
		snormal=dsqrt(dble(b)**2+dble(c)**2)
		return
	end function snormal
!------------------------Function--------------------------------------
	subroutine f(z,c,t,burn,function_code)
	complex(8)::z,c,t,bsi=(0,1)
	integer(4)::function_code
	real(8)::iim,iir
	logical::burn
	if (burn) then
		call im_re(z,iim,iir)
		z=(abs(iim)+abs(iir)*bsi)
	end if
	if (function_code==1) then
		t=z**2+c
	end if
	if (function_code==2) then
		t=z**3+c
	end if
	if (function_code==3) then
		t=z**3+z+c
	end if
	if (function_code==4) then
		t=z**3-c
	end if
	if (function_code==5) then
		t=z**2-c
	end if
	if (function_code==6) then
		t=z**4-z-c
	end if
	if (function_code==7) then
		t=z**4+c
	end if
	if (function_code==8) then
		t=z**5+c
	end if
	if (function_code==9) then
		t=z**6-z**2-c
	end if
	if (function_code==10) then
		t=z**2+3*c
	end if
	if (function_code==11) then
		t=sin(z)
	end if
	if (function_code==12) then
		t=cos(z)
	end if
	if (function_code==13) then
		t=cos(z**2)
	end if
	if (function_code==14) then
		t=(z+sqrt(z))**2+c
	end if
	if (function_code==15) then
		t=z**5+c*z**3+c
	end if
	if (function_code==16) then
		t=(z+exp(z))**2+c
	end if
	if (function_code==17) then
		t=sqrt(z**3+c)
	end if
	if (function_code==18) then
		t=z**30-30*z**29-87*z**28 + c
	end if
	if (function_code==19) then
		t=z**(4*atan(1.))+(4*atan(1.))**c
	end if
	if (function_code==20) then
		t=z**2/c
	end if
	if (function_code==21) then
		t=z**2*log(c)
	end if
	if (function_code==22) then
		t=(z*cos(z))**2+c
	end if
	if (function_code==23) then
		t=1+c
	end if
	if (function_code==24) then
		t=z**(2-z)+c
	end if
	if (function_code==25) then
		t=z**(1+sin(z)/cos(z))+c
	end if
	if (function_code==26) then
		t=c*sin(z)/cos(z)
	end if
	if (function_code==27) then
		t=c*cos(z)
	end if
	if (function_code==28) then
		t=c*sin(z)
	end if
	if (function_code==29) then
		t=c*z**2
	end if
	if (function_code==30) then
		t=(z**2-z)**2+c
	end if		
	end subroutine f
!------------------------DF function-------------------------------------
	subroutine df(z,c,d_f,function_code)
		complex(8)::z,d_f,c
		integer(4)::function_code
		d_f=1
		if (d_f/=0) then	
			if (function_code==1) then
				d_f=2*z
			end if
			if (function_code==2) then
				d_f=3*z**2+c
			end if
			if (function_code==3) then
				d_f=3*z**2+1
			end if
			if (function_code==4) then
				d_f=3*z**2
			end if
			if (function_code==5) then
				d_f=2*z
			end if
			if (function_code==6) then
				d_f=4*z**3-1
			end if
			if (function_code==7) then
				d_f=4*z**3
			end if
			if (function_code==8) then
				d_f=5*z**4
			end if
			if (function_code==9) then
				d_f=6*z**5-2*z
			end if
			if (function_code==10) then
				d_f=2*z
			end if
			if (function_code==11) then
				d_f=cos(z)
			end if
			if (function_code==12) then
				d_f=-sin(z)
			end if
			if (function_code==13) then
				d_f=-2*z*sin(z**2)
			end if
			if (function_code==14) then
				if (z/=0) then
					d_f=2*(z+sqrt(z))*((1./(2*sqrt(z))+1))+c
				else
					d_f=3*(z+sqrt(z))
				end if
			end if
			if (function_code==15) then
				d_f=5*z**4+3*c*z**2
			end if
			if (function_code==16) then
				d_f=2*(z+exp(z))*(1+exp(z))
			end if
			if (function_code==17) then
				if (z/=0) then
					d_f=(3*z**2)*(1./(2*sqrt(z**3+c)))
				else
					d_f=3*z**2*0.5
				end if
			end if
			if (function_code==18) then
				d_f=30*z**29-87*z**28-2349*z**27
			end if
			if (function_code==19) then
				d_f=4*atan(1.)*z**(4*atan(1.)-1)
			end if
			if (function_code==20) then
				d_f=(2./c)*z
			end if
			if (function_code==21) then
				d_f=2*z*(1./c)
			end if
			if (function_code==22) then
				d_f=2*(z*cos(z))*(1-sin(z))
			end if
			if (function_code==23) then
				if ((z/=0).and.(log(z)/=1)) then
					d_f=(1./z)*(1./sqrt(1-log(z)**2))
				end if
			end if
			if (function_code==24) then
				d_f=(2-z)*z**(1-z)
			end if
			if (function_code==25) then
				d_f=z**(sin(z)/cos(z))*(1./(1+z**2))
			end if
			if (function_code==26) then
				d_f=c*(1+(sin(z)/cos(z))**2)
			end if
			if (function_code==27) then
				d_f=c*(-sin(z))
			end if
			if (function_code==28) then
				d_f=c*cos(z)
			end if
			if (function_code==29) then
				d_f=c*2*z
			end if
			if (function_code==30) then
				d_f=2*(z**2-z)*(2*z-1)
			end if	
		end if
	end subroutine df
end

		



