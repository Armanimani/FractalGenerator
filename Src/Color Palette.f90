Subroutine color_palette(number_color,Color_matrix,color)
	use dflib
	integer::number_color,Color_matrix(4,8),color(1:256)
	integer(4),dimension(:),allocatable::Primary_color
	real(8)::red_step,green_step,blue_step,color_step
	allocate(primary_color(number_color))
	do i=1,number_color
		color(color_matrix(4,i))=rgbtointeger(color_matrix(1,i),color_matrix(2,i),color_matrix(3,i))
	end do
	i=1
	do while (i/=number_color)
		color_step=color_matrix(4,i+1)-color_matrix(4,i)
		red_step=(color_matrix(1,i+1)-color_matrix(1,i))/color_step
		green_step=(color_matrix(2,i+1)-color_matrix(2,i))/color_step
		blue_step=(color_matrix(3,i+1)-color_matrix(3,i))/color_step
		do j=color_matrix(4,i)+1,color_matrix(4,i+1)-1
			color(j)=rgbtointeger(int(color_matrix(1,i)+((j-color_matrix(4,i)+1)*red_step)),int(color_matrix(2,i)+((j-color_matrix(4,i)+1)*green_step)),int(color_matrix(3,i)+((j-color_matrix(4,i)+1)*blue_step)))
		end do
		i=i+1
	end do
end subroutine color_palette
	