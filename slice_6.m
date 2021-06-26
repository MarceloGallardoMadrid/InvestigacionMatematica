function [a10trans alfa11 a12trans A20 a21 A22]=slice_6(A,a10cols)
  Acols=columns(A);
  Arows=rows(A);
  a10trans=[];alfa11=[];a12trans=[];A20=[];a21=[];A22=[];
  aux_A20=[];aux_A22=[];
  for j=1:Acols
    for i=1:Arows
      indice=(j-1)*Arows+i;
      if (i==1 &&j<=a10cols)
        a10trans=[a10trans A(indice)];
      elseif (j==a10cols+1&&i==1)
        alfa11=A(indice);
      elseif (i==1 && j>a10cols+1)
        a12trans=[a12trans A(indice)];
      elseif (i>1 && j<=a10cols)
        if(i==Arows)
          aux_A20=[aux_A20;A(indice)];
          A20=[A20 aux_A20];
          aux_A20=[];
        else
          aux_A20=[aux_A20;A(indice)];
        endif
      elseif (i>1&&j==a10cols+1)
        a21=[a21;A(indice)];
      else
        if(i==Arows)
          aux_A22=[aux_A22;A(indice)];
          A22=[A22 aux_A22];
          aux_A22=[];
        else
          aux_A22=[aux_A22;A(indice)];
        endif        
      endif
    endfor
  endfor
endfunction
