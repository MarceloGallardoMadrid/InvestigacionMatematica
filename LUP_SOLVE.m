function xhat=LUP_SOLVE(A,b)
  
  Arows=rows(A);
  p=zeros(Arows,1);
  [LU phat]=LU_PIV(A,p);
  bhat=APPLY_PIV(phat,b);
  z=LTRSV_Var1(LU,bhat);
  xhat=UTRSV_Var1(LU,z);
endfunction
