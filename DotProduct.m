function a=DotProduct(X,Y)
  r=size(X);
  a=0;
  for i=1:r(2)
	a=a+X(i)*Y(i);
  end
endfunction
