function y=MatTRANSTRUPXVec_var1(U,x,y)
  %res=U*x+y
  Utl=[];
  Utr=[];
  Ubl=[];
  Ubr=U;
  xt=[];
  xb=x;
  yt=[];
  yb=y;
  n=rows(Ubr);
  while 0<n
    n--;
    U00=Utl;
    [u01 U02]=slice_left_r_mtx(Utr);
    [u10_trans U20]=slice_top_bot_mtx(Ubl);
    [esc_u11 u12_trans u21 U22]=slc_row_col_mtx(Ubr);
    x0=xt;
    [esc_x1 x2]=slice_top_bot_mtx(xb);
    y0=yt;
    [esc_y1 y2]=slice_top_bot_mtx(yb);
    %---------------------------
    
    %---------------------------
    Utl=glue(esc_u11,u10_trans,u01,U00);
    Utr=glue_mtx_row(U02,u12_trans);
    Ubl=glue_mtx_col(U20,u21);
    Ubr=U22;
    xt=glue_mtx_row(x0,esc_x1);
    xb=x2;
    yt=glue_mtx_row(y0,esc_y1);
    yb=y2;
    
  endwhile
  y=yt;
endfunction