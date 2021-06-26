function A=set_to_zero(B)
  if(size(B)(2)==0)
    A=[];
  endif
  A=[];
  v_aux=[];
  q_rows=size(B)(1);
  q_cols=size(B)(2);
  n=q_rows*q_cols;
  for i=1:n
    if(mod(i,q_rows)!=0)
      v_aux=[v_aux;0];
     else 
      v_aux=[v_aux;0];
      A=[A v_aux];
      v_aux=[];
    endif
  endfor
endfunction
