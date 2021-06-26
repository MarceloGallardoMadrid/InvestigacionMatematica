function Y_out=Suma(X,Y)
  r=size(X);
  for i=1:r(2)
	Y_out(i)=Y(i)+X(i);
  end
endfunction
