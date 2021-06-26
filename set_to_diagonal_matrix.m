function A=set_to_diagonal_matrix(B,x)
  q_rows=size(B)(1);
  q_cols=size(B)(2);
  if(q_rows!=q_cols || q_cols!=size(x)(2))
    A=[];
   else
    if(size(B)(1)==1)
      A=x(1);
    else
      A=x(1);
      n=q_rows;
      for i=2:(n)       
        A=glue(x(i),zeros(1,i-1),zeros(i-1,1),A);
      endfor
    endif
  endif
endfunction
