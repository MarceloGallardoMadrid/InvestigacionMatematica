function Y_out=Restar(X,Y)
  r=size(Y);
  for i=1:r(2)
	Y_out(i)=X(i)-Y(i);
  end
endfunction
