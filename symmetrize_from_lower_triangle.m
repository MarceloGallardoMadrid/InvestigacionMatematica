%En teoria B es cuadrada
function A=symmetrize_from_lower_triangle(B)
  q_rows=size(B)(1);
  q_cols=size(B)(2);
  if(q_rows==0)
    A=[];
  else

    Btl=[];
    Btr=[];
    Bbl=[];
    Bbr=B;
    i=0;
    while (size(Btl)(1)<size(B)(1)&&i<5) 
      Bbr
      [alpha row col Bbr]=slc_row_col_mtx(Bbr);
      [top BOT]=slice_top_bot_mtx(Bbl);
      [left Right]=slice_left_r_mtx(Btr);
      left=top';
      left
      Btl
      Btl=glue(alpha,top,left,Btl);
      Btl
      Btr=glue_mtx_col(Right,row);
      Btr
      Bbl=glue_mtx_row(BOT,col);
      Bbl
     
      i++;
    endwhile
    A=Btl;
  endif
endfunction
