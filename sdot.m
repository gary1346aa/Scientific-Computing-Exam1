function C = sdot(A,B)

    [m,~] = size(A);
    [~,k] = size(B);
    C = zeros(m,k);
    
    for i = 1 : m
        for j = 1 : k
            C(i,j) = C(i,j) + A(i,:) * B(:,j);
        end
    end
    
end
