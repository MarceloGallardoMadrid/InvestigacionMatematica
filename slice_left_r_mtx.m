function [col mtx]=slice_left_r_mtx(A)
  q_rows=size(A)(1);
  q_cols=size(A)(2);
  col=[];
  mtx=[];
  if(q_rows==0)
    col=[];
    mtx=[];
  else
    if(q_cols==1)
      col=A;
      mtx=[];
    else
      v_temp=[];
      n=q_rows*q_cols;
      for i=1:n
        if(i<=q_rows)
          col=[col;A(i)];
        else
          if(mod(i,q_rows)!=0)
            v_temp=[v_temp;A(i)];
           else
            v_temp=[v_temp;A(i)];
            mtx=[mtx v_temp];
            v_temp=[];
           endif
          endif
      endfor  
    endif
  endif
endfunction
