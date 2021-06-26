function Y_out=axpySlicing(alpha,X,Y)
	Y_out=[];
	X_temp=0;
	X_temp_bot=X;
	Y_temp=0;
	Y_temp_bot=Y;
	a=0;
	while(size(X_temp_bot)(2)>0)
		[X_temp X_temp_bot]=SliceTopBot(X_temp_bot);
		[Y_temp Y_temp_bot]=SliceTopBot(Y_temp_bot);
		a=alpha*X_temp+Y_temp;
		Y_out=[Y_out a];
	end
endfunction
