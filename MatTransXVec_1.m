function res = MatTransXVec_1(A,x,y)
  res=[];
  AL=[];
  AR=A;
  y_top=[];
  y_bot=y;
  while 0<rows(y_bot)
    [col_temp AR]=slice_left_r_mtx(AR);
    [esc_temp y_bot]=slice_top_bot_mtx(y_bot);
    
    esc_temp=col_temp'*x+esc_temp;
    res=[res;esc_temp];
  endwhile
endfunction
