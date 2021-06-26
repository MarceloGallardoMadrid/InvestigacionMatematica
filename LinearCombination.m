function Y_out=LinearCombination(alpha,X,Beta,Y)
  r=size(X);
  for i=1:r(2)
	Y_out(i)=Beta*Y(i)+alpha*X(i);
  end
endfunction
