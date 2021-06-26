function [TOP bot]=slice_from_bot2top(A)
  %Esta funcion separa la fila de abajo con la matriz
  q_rows=size(A)(1);
  q_cols=size(A)(2);
  bot=[];
  TOP=[];
  n=q_rows*q_cols;
  v_temp=[];
  if(size(A)(1)==1)
    bot=A;
  else
    for i=1:n
      if(mod(i,q_rows)==0)
        bot=[bot A(i)];
      else
        if(mod(i,q_rows)!=q_rows-1)
          v_temp=[v_temp;A(i)];
        else
          v_temp=[v_temp;A(i)];
          TOP=[TOP v_temp];
          v_temp=[];
        endif
      endif
    endfor
   endif
endfunction
