function A=glue_row_mtx(row,mtx)
  row_cols=columns(row);
  mtx_cols=columns(mtx);
  if((row_cols+mtx_cols)==0||row_cols!=mtx_cols)
    if(mtx_cols==0)
      A=row;
    else
      A=[];
    endif
  else
    A=[row;mtx];
  endif
   
endfunction
