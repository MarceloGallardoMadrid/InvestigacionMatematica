function Y_out=axpy(alpha,X,Y)
  r=size(X);
  for i=1:r(2)
	Y_out(i)=Y(i)+alpha*X(i);
  end
endfunction
