function A=glue_mtx_row(B,row)
  if(size(B)(1)!=0&&size(row)(1)!=0&&size(B)(2)!=size(row)(2))
    A=[];
   else
    A=[B;row];
  endif
endfunction
