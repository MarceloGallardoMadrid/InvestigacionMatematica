function A=glue_var2(esc,row,col,mtx)
  row_cols=columns(row);
  col_rows=rows(col);
  mtx_rows=rows(mtx);
  mtx_cols=columns(mtx);
  if(row_cols!=mtx_rows||col_rows!=mtx_rows)
    A=[];
  else
    if((row_cols+mtx_rows+col_rows+mtx_cols==0)&&rows(esc)!=0)
      A=[esc];
    else  
      row=[esc row];
      mtx=[col mtx];
      A=[row;mtx];
    endif
  endif
endfunction
