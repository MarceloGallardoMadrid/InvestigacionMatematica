function P= pivoting(vp)
  P=[];
  %vp es un vector col
  r=rows(vp);
  if(!r==0)
    for i=1:r
      aux=zeros(1,r);
      aux(vp(i))=1;
      P=[P;aux];
    endfor
   endif
endfunction
