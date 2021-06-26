function A=my_transpose(B)
  A=[];
  q_rows=size(B)(1);
  top=[];
  BOT=B;
  for i=0:q_rows
    [top BOT]=slice_top_bot_mtx(BOT);
    A=[A top'];
  endfor
endfunction
