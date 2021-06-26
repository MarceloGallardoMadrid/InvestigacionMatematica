function xhat=LTRSV_Var1(L,b)
  Ltl=[];
  Ltr=[];
  Lbl=[];
  Lbr=L;
  bt=[];
  bb=b;
  while 0<rows(Lbr)
    L00=Ltl;
    [l01 L02]=slice_left_r_mtx(Ltr);
    [l10trans L20]=slice_top_bot_mtx(Lbl);
    [l11 l12trans l21 L22]=slc_row_col_mtx(Lbr);
    b0=bt;
    [Beta1 b2]=slice_top_bot_mtx(bb);
    %-----------------------
    b2=b2-Beta1*l21;
    %-------------------------------
    Ltl=glue(l11,l10trans,l01,L00);
    Ltr=glue_mtx_row(L02, l12trans);
    Lbl=glue_mtx_col(L20,l21);
    Lbr=L22;
    bt=glue_mtx_col(b0,Beta1);
    bb=b2;
  endwhile
  xhat=bt';
endfunction
