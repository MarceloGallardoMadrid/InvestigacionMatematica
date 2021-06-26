function Y_out=Escalar(alpha,Y)
  r=size(Y);
  for i=1:r(2)
	Y_out(i)=alpha*Y(i);
  end
endfunction
