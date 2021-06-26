function bhat=Forward_Substitution(A,b)
  %Algorithm that applies the multiplier on the vector b
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
    %------------------
    b2=b2-Beta1*a21;
    %---------------------
    Atl=glue(a11,a10trans,a01,A00);
    Atr=glue_mtx_row(A02,a12trans);
    Abr=glue_mtx_col(A20,a21);
    Abr=A22;
    bt=glue_mtx_col(b0,Beta1);
    bb=b2;
  endwhile
  bhat=bt';
endfunction
