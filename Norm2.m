function A=Norm2(X)
  r=size(X);
  A=0;
  for i=1:r(2)
	A=A+X(i)*X(i);
  end
  A=sqrt(A);
endfunction
