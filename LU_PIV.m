function [LU,np]=LU_PIV(A)
  p=ones(rows(A),1);
  %p empieza como un vector columna lleno de ceros
  Atl=[];
  Atr=[];
  Abl=[];
  Abr=A;
  pt=[];
  pb=p;
  n=0;
  r=rows(A);
  while 0<rows(Abr)
    
    A00=Atl;
    [a01 A02]=slice_left_r_mtx(Atr);
    [a10trans A20]=slice_top_bot_mtx(Abl);
    [alfa11 a12trans a21 A22]=slc_row_col_mtx(Abr);
    p0=pt;
    [pi1 p2]=slice_top_bot_mtx(pb);
    pi1=idx_pivot([alfa11;a21]);
    %---------------------------------
    %como hago
    mtx_aux=[a10trans alfa11 a12trans;A20 a21 A22];
    %(a10trans||alfa11 | a12trans):=P(pi1)(a10trans||alfa11 | a12trans)
    %(A20     ||a21    | A22    )         (A20     ||a21    | A22    )
    [a10trans alfa11 a12trans A20 a21 A22]=slice_6(piv_mtx(pi1,r-n)*mtx_aux,n);
    a21=a21/alfa11;
    %como hago
    A22=A22-a21*a12trans;
    %------------------------------------
    
    Atl=glue(alfa11,a10trans,a01,A00);
    Atr=glue_mtx_row(A02,a12trans);
    Abl=glue_mtx_col(A20,a21);
    Abr=A22;
    pt=glue_mtx_row(p0,pi1);
    pb=p2;
    n++;
  endwhile
  LU=Atl;
  np=pt;
endfunction
