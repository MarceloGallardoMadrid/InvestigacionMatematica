function RES =GEMM_UNB_VAR1(A,B,C)
  %Res=A*B+C
  Bl=[];
  Br=B;
  Cl=[];
  Cr=C;
  while 0<columns(Cr)
    B0=Bl;
    [b1 B2]=slice_left_r_mtx(Br);
    C0=Cl;
    [c1 C2]=slice_left_r_mtx(Cr);
    c1=A*b1+c1;
    Br=glue_mtx_col(B0,b1);
    Br=B2;
    Cl=glue_mtx_col(C0,c1);
    Cr=C2;
  endwhile
  RES=Cl;
endfunction
