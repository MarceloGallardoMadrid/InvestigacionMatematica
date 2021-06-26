function RES =GEMM_UNB_VAR2(A,B,C)
  %Res=A*B+C
  At=[];
  Ab=A;
  Ct=[];
  Cb=C;
  while 0<rows(Ab)
    A0=At;
    [a1 A2]=slice_top_bot_mtx(Ab);
    C0=Ct;
    [c1 C2]=slice_top_bot_mtx(Cb);
    c1=a1*B+c1;
    At=glue_mtx_row(A0,a1);
    Ab=A2;
    Ct=glue_mtx_row(C0,c1);
    Cb=C2;
  endwhile
  RES=Ct;
endfunction