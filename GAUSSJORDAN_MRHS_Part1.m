function [An bn]=GAUSSJORDAN_MRHS_Part1(A,B)
  %En vez de tener un vector columna tengo una matriz como b
  Atl=[];
  Atr=[];
  Abl=[];
  Abr=A;
  Bt=[];
  Bb=B;
  while 0<rows(Abr)
    A00=Atl;
    [a01 A02]=slice_left_r_mtx(Atr);
    [a10trans A20]=slice_top_bot_mtx(Abl);
    [a11 a12trans a21 A22]=slc_row_col_mtx(Abr);
    B0=Bt;
    [b1trans B2]=slice_top_bot_mtx(Bb);
    %-----------------------
    a01=a01/a11;
    a21=a21/a11;
    if(rows(A02)!=0)
      A02=A02-a01*a12trans; 
    endif
    if(rows(B0)!=0)
    B0=B0-a01*b1trans;
    endif
    
    if(rows(A22)!=0)
      A22=A22-a21*a12trans;
    
    endif 
    if(rows(B2)!=0)
    B2=B2-a21*b1trans;
    endif
    
    a01=set_to_zero(a01);
    a21=set_to_zero(a21);
    %-------------------------------
    Atl=glue(a11,a10trans,a01,A00);
    Atr=glue_mtx_row(A02, a12trans);
    Abl=glue_mtx_col(A20,a21);
    Abr=A22;
    Bt=glue_mtx_row(B0,b1trans);
    Bb=B2;
  endwhile
  An=Atl;
  bn=Bt;
endfunction