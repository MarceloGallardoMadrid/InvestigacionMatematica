function U=set_to_upperTr(A)
  Atl=[];
  Atr=[];
  Abl=[];
  Abr=A;
  while 0<rows(Abr)
    A00=Atl;
    [a01 A02]=slice_left_r_mtx(Atr);
    [a10trans A20]=slice_top_bot_mtx(Abl);
    [a11 a12trans a21 A22]=slc_row_col_mtx(Abr);
    %-------------------------------------------
    a10trans=set_to_zero(a10trans);
    A20=set_to_zero(A20);
    a21=set_to_zero(a21);
    %----------------------------------
    Atl=glue(a11,a10trans,a01,A00);
    Atr=glue_mtx_row(A02,a12trans);
    Abl=glue_mtx_col(A20,a21);
    Abr=A22;
  endwhile
  U=Atl;
endfunction
