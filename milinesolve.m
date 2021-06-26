function sol=milinesolve(A,b)
  GT=Gaussian_Elimination(A);
  bhat=Forward_Substitution(GT,b);
  UGT=set_to_upperTr(GT);
  sol=backguard_substitution(UGT,bhat);
endfunction
