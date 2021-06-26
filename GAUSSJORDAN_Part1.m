function [An bn]=GAUSSJORDAN_Part1(A,b)
  Atl=[];
  Atr=[];
  Abl=[];
  Abr=A;
  bt=[];
  bb=b;
  while 0<rows(Abr)
    A00=Atl;
    [a01 A02]=slice_left_r_mtx(Atr);
    [a10trans A20]=slice_top_bot_mtx(Abl);
    [a11 a12trans a21 A22]=slc_row_col_mtx(Abr);
    b0=bt;
    [Beta1 b2]=slice_top_bot_mtx(bb);
    %-----------------------
    a01=a01/a11;
    a21=a21/a11;
    if(rows(A02)!=0)
      A02=A02-a01*a12trans; 
    endif
    b0=b0-Beta1*a01;
    if(rows(A22)!=0)
      A22=A22-a21*a12trans;
    
    endif 
    b2=b2-Beta1*a21;
    a01=set_to_zero(a01);
    a21=set_to_zero(a21);
    %-------------------------------
    Atl=glue(a11,a10trans,a01,A00);
    Atr=glue_mtx_row(A02, a12trans);
    Abl=glue_mtx_col(A20,a21);
    Abr=A22;
    bt=glue_mtx_row(b0,Beta1);
    bb=b2;
  endwhile
  An=Atl;
  bn=bt;
endfunction