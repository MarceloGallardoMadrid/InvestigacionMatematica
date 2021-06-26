function xhat=backguard_substitution(A,b)
  n=rows(A);
  xhat=[];
  for k=1:n
    vaux=[];
    for i=0:(k-2)
      vaux=[vaux A(n-k+1,n-i)];
    endfor
    xaux=b(n-k+1)-DotProduct(vaux,xhat);
    xaux=xaux/A(n-k+1,n-k+1);
    m=A(n-k+1,n-k+1);
    xhat=[xhat;xaux];
    
  endfor
  xhat=upsidedownvec(xhat);
endfunction
