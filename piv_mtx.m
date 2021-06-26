function P=piv_mtx(f,n)
%no tengo ide lo que hace
  if (n==0||f>n)
    P=[];
  else
    vp=[f];
    for i=2:n
      if (i==f)
        vp=[vp;1];
      else
        vp=[vp;i];
      endif
    endfor
    P=pivoting(vp);
  endif
  
endfunction
