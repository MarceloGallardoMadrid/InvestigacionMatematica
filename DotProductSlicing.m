function a=DotProductSlicing(X,Y)
	X_temp=0;
	X_temp_bot=X;
	Y_temp=0;
	Y_temp_bot=Y;
	a=0;
	while(size(X_temp_bot)(2)>0)
		[X_temp X_temp_bot]=SliceTopBot(X_temp_bot);
		[Y_temp Y_temp_bot]=SliceTopBot(Y_temp_bot);
		a=a+X_temp*Y_temp;
		size(X_temp_bot)(2)
	end
endfunction
