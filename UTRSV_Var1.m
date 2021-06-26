function xhat=UTRSV_Var1(U,b)
  Utl=U;
  Utr=[];
  Ubl=[];
  Ubr=[];
  bt=b;
  bb=[];
  while 0<rows(Utl)
   [U00 u01 u10trans u11]=slc_mtx_col_row(Utl);
   
   [U02 u12trans]=slice_from_bot2top(Utr);
   [U20 u21]=slice_from_right2left(Ubl);
   U22=Ubr;
   
   [b0 beta1]=slice_from_bot2top(bt);
   b2=bb;
    %---------------------------
    beta1=beta1-DotProduct(u12trans,b2);
    beta1=beta1/u11;
    %---------------------------------  
    Utl=U00;
    Utr=glue_col_mtx(u01,U02);
    Ubl=glue_row_mtx(u10trans,U20);
    Ubr=glue_var2(u11,u12trans,u21,U22);
    bt=b0;
    bb=glue_row_mtx(beta1,b2);
    
   endwhile
    xhat=bb;
  
endfunction
