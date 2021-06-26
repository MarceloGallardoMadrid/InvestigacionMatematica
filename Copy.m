function X=Copy(X,Y)
  r=size(Y);
  for i=1:r(2)
	X(i)=Y(i);
  end
endfunction
