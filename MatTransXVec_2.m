function res =MatTransXVec_2(A,x,y)
  A_top=[];
  A_bot=A;
  x_top=[];
  x_bot=x;
  while 0<rows(A_bot)
    [row A_bot]=slice_top_bot_mtx(A_bot);
    [esc_temp x_bot]=slice_top_bot_mtx(x_bot);
    y=esc_temp*row'+y;
  endwhile
  res=y;
endfunction
