function y=mtx_vector_multi(A,x)
%Si bien x es un vector horizontal se considera vertical, lo mismo que y
  Ab=A;
  y=[];
  n=rows(A);
  for i=1:n
    [top Ab]=slice_top_bot_mtx(Ab);
    y=[y DotProduct(x,top)];
  endfor
endfunction
