function A=glue_col_mtx(col,mtx)
  col_rows=rows(col);
  mtx_rows=rows(mtx);
  mtx_cols=columns(mtx);
  
  if((col_rows+mtx_rows+mtx_cols)==0|| col_rows!=mtx_rows)
    if(mtx_rows==0)
      A=col;
     else
      A=[];
     endif
  else
    A=[col mtx];
  endif
endfunction
