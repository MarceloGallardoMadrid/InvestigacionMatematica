function y=MatTRLWXVec_var1(L,x,y)
  %res=U*x+y
  Ltl=[];
  Ltr=[];
  Lbl=[];
  Lbr=L;
  xt=[];
  xb=x;
  yt=[];
  yb=y;
  n=rows(Lbr);
  while 0<n
    n--;
    L00=Ltl;
    [l01 L02]=slice_left_r_mtx(Ltr);
    [l10_trans L20]=slice_top_bot_mtx(Lbl);
    [esc_l11 l12_trans l21 L22]=slc_row_col_mtx(Lbr);
    x0=xt;
    [esc_x1 x2]=slice_top_bot_mtx(xb);
    
    [esc_y1 y2]=slice_top_bot_mtx(yb);
    y0=yt;
    %--------------
    esc_y1=DotProduct(l10_trans,x0)+esc_x1*esc_l11+esc_y1;
    %--------------
    Ltl=glue(esc_l11,l10_trans,l01,L00);
    Ltr=glue_mtx_row(L02,l12_trans);
    Lbl=glue_mtx_col(L20,l21);
    Lbr=L22;
    xt=glue_mtx_row(x0,esc_x1);
    xb=x2;
    yt=glue_mtx_row(y0,esc_y1);
    yb=y2;
    
  endwhile
  y=yt;
endfunction