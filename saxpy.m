function C = saxpy(A,B)
    
    [m,~] = size(A);
    [n,k] = size(B);
    C = zeros(m,k);
    
    for j = 1 : k
        for i = 1 : n
            C(:,j) = C(:,j) + A(:,i) * B(i,j);
        end
    end

end
