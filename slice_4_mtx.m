function [Atl Atr Abl Abr]=slice_4_mtx(A,rows,cols)
  Atl=[];
  Atr=[];
  Abl=[];
  Abr=[];
  q_rows=size(A)(1);
  q_cols=size(A)(2);
  if(size(A)(1)==0)
    Atl=[];
    Atr=[];
    Abl=[];
    Abr=[];
  else
    if(rows==0 && cols==0)
      Abr=A;
    else
      n=q_rows*q_cols;
      v_temp_tl=[];
      v_temp_tr=[];
      v_temp_bl=[];
      v_temp_br=[];
      for i=1:n
        %Esta forma de calcular x,y es porque el lenguaje lee primero vertical y despues horizontals
        %Representa la fila
         y=mod((i-1),q_rows)+1;
         %Representa la columna
         x=floor((i-1)/q_rows)+1;
         if(y<=rows && x<=cols)
           if(y!=rows)
            v_temp_tl=[v_temp_tl;A(i)];
           else
            v_temp_tl=[v_temp_tl;A(i)];
            Atl=[Atl v_temp_tl];
            v_temp_tl=[];
           endif
         elseif(y<=rows&&x>cols)
            if(y!=rows)
              v_temp_tr=[v_temp_tr;A(i)];
            else
              v_temp_tr=[v_temp_tr;A(i)];
              Atr=[Atr v_temp_tr];
              v_temp_tr=[];
            endif
         elseif(y>rows&&x<=cols)
            if(y!=q_rows)
              v_temp_bl=[v_temp_bl;A(i)];
            else
              v_temp_bl=[v_temp_bl;A(i)];
              Abl=[Abl v_temp_bl];
              v_temp_bl=[];
            endif
         else
            if(y!=q_rows)
              v_temp_br=[v_temp_br;A(i)];
            else
              v_temp_br=[v_temp_br;A(i)];
              Abr=[Abr v_temp_br];
              v_temp_br=[];
            endif
         endif
      endfor
    endif
  endif
endfunction
