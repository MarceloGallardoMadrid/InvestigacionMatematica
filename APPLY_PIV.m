function bhat=APPLY_PIV(p,b)
  %Ambos vectores columnas
  pt=[];
  pb=p;
  bt=[];
  bb=b;
  n=0;
  r=rows(b);
  while 0<rows(bb)
    p0=pt;
    [pi1 p2]=slice_top_bot_mtx(pb);
    b0=bt;
    pm=piv_mtx(pi1,r-n);
    bb=pm*bb;
    [beta1 b2]=slice_top_bot_mtx(bb);
    %-------------------------------
    pt=[p0;pi1];
    pb=p2;
    bt=[b0;beta1];
    bb=b2;
    n++;
  endwhile
  bhat=bt;
endfunction
