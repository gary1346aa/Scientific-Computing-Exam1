for i = 1 : 100

    m = 10*i;
    n = 10*i;
    k = 10*i;

    A = floor(rand(m,n));
    B = floor(rand(n,k));

    C = A*B;

    tic
    C_dot = sdot(A,B);
    toc
    t_dot(i) = toc;

    tic
    C_py = saxpy(A,B);
    toc
    t_py(i) = toc;

end
plot([t_dot.' t_py.'])