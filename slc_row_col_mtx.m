%Que es alpha row col mtx
%A=[alpha row;col MTX]
function [alpha row col mtx]=slc_row_col_mtx(A)
  row=[];
  col=[];
  mtx=[];
  q_rows=size(A)(1);
  q_cols=size(A)(2);
  n=q_rows*q_cols;
  v_aux=[];
  if(size(A)(1)==0)
    alpha=[];
  else
    for i=1:n
   %Esta forma de calcular x,y es porque el lenguaje lee primero vertical y despues horizontals
    %Representa la fila
    y=mod((i-1),q_rows)+1;
    %Representa la columna
    x=floor((i-1)/q_rows)+1;
      if(i==1)
        alpha=A(i);
      elseif(i<=q_rows)
        col=[col;A(i)];
      elseif(mod(i,q_rows)==1)
        row=[row A(i)];
      else
          if(mod(i,q_rows)!=0)
            v_aux=[v_aux;A(i)];
          else
            v_aux=[v_aux;A(i)];
            mtx=[mtx v_aux];
            v_aux=[];
          endif
      endif   
    endfor
  endif
endfunction
