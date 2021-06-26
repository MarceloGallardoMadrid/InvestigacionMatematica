function A=glue_mtx_col(B,col)
  if(size(B)(1)!=size(col)(1)&&size(col)(1)!=0&&size(B)(1)!=0)
    A=[];
  else
    A=[B col];
  endif
  
endfunction
