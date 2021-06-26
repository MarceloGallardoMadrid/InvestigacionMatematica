function [col Mtx]=SliceColsMtx(A)
	v_aux=[];
	if(size(A)(1)==0)
		col=[];
		Mtx=[];
	elseif (size(A)(2)==1)
		col=A;
		Mtx=[];
	else
		col=[];
		Mtx=[];
		n=size(A)(1)*size(A)(2);
		q_cols=size(A)(2);
		q_rows=size(A)(1);
		for i=1:n
			if(i<=q_rows)
				col=[col;A(i)];
			else
				if(mod(i,q_rows)!=0)
					v_aux=[v_aux;A(i)];
				else
					v_aux=[v_aux;A(i)];
					Mtx=[Mtx v_aux];
					v_aux=[];
				end
			end
		end
	end
endfunction
