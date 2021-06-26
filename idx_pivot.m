function f=idx_pivot(col)
  %col es un vector columna
  r=rows(col);
  if(r==0)
    f=[];
  elseif(r==1)
    f=1;
  else
    if(col(1)==0)
      f=[];
      %buscar con que fila cambiar cambiar
      for i=2:r
        if (col(i)!=0)
          f=i;
          break
        endif
      endfor
    else
      f=1;
    endif
  endif
endfunction
