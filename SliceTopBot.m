function [top,bot]=SliceTopBot(X)
	top=X(1);
	n=size(X)(2);
	if(n==1)
		bot=[];
	else
		for i=2:n
			bot(i-1)=X(i);
		endfor
	endif
endfunction
