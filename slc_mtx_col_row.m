function [mtx col row esc]=slc_mtx_col_row(A)
  A_rows=rows(A);
  A_cols=columns(A);
  n=A_rows*A_cols;
  v_aux=[];
  mtx=[];
  col=[];
  row=[];
  esc=[];
  if((A_rows+A_cols)==0)
    mtx=[];col=[];row=[];esc=[];
  else
    if(n==1)
      esc=A;mtx=[];col=[];row=[];
    else
      for i=1:n
       %Representa la fila
       y=mod((i-1),A_rows)+1;
       %Representa la columna
       x=floor((i-1)/A_rows)+1;      
       if(i==n)
        esc=A(i);
       elseif(x==A_cols&&y<A_rows)
        col=[col;A(i)];
       elseif(y==A_rows&&x<A_cols)
        row=[row A(i)];
        else
          if(y!=A_rows-1)
            v_aux=[v_aux;A(i)];
          else
            v_aux=[v_aux;A(i)];
            mtx=[mtx v_aux];
            v_aux=[];
          endif
       endif        
      endfor
    endif
  endif
endfunction
