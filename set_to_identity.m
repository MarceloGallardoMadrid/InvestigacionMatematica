function A=set_to_identity(B)
  q_rows=size(B)(1);
  q_cols=size(B)(2);
  if(q_rows!=q_cols)
    A=[];
   else
    if(size(B)(1)==1)
      A=1;
    else
      A=1;
      n=q_rows;
      for i=1:(n-1)
        A=glue(1,zeros(1,i),zeros(i,1),A);
      endfor
    endif
  endif
endfunction
