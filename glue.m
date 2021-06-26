function A=glue(alpha,row,col,mtx)
  if(size(mtx)(1)!=0&&(size(mtx)(1)!=size(col)(1)||size(mtx)(2)!=size(row)(2)))
    A=[];
  else
    A=[mtx col];
    row=[row alpha];
    A=[A ;row];
  endif
endfunction
