%reduced row echelon form 
B = [0 1 3 0 0 5; 0 0 0 1 0 7; 0 0 0 0 1 9; 0 0 0 0 0 0]
B_rref = B; 
B_rref_reduced = B_rref(1:end-1,:);
BRR = B_rref_reduced
pivots = [B_rref_reduced(:,2) B_rref_reduced(:,4) B_rref_reduced(:,5)];
free = [B_rref_reduced(:,1) B_rref_reduced(:,3) B_rref_reduced(:,6)];
free = (-1)*free;
N = [pivots(1,:);free(1,:);pivots(2,:);free(2,:);free(3,:);pivots(3,:)];
