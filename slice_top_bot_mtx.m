%Esta funcion separa la fila de arriba con la matriz
function [top BOT]=slice_top_bot_mtx(A)
  q_rows=size(A)(1);
  q_cols=size(A)(2);
  BOT=[];
  top=[];
  n=q_rows*q_cols;
  v_temp=[];
  if(size(A)(1)==1)
    top=A;
  else
    for i=1:n
      if(mod(i,q_rows)==1)
        top=[top A(i)];
      else
        if(mod(i,q_rows)!=0)
          v_temp=[v_temp;A(i)];
        else
          v_temp=[v_temp;A(i)];
          BOT=[BOT v_temp];
          v_temp=[];
        endif
      endif
    endfor
   endif
endfunction
