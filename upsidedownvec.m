function res =upsidedownvec(v)
  %--- v es un vector columna
  n=rows(v);
  res=[];
  while 0<rows(v)
    [v esc_bot]=slice_from_bot2top(v);
    res=[res;esc_bot];
  endwhile
endfunction
