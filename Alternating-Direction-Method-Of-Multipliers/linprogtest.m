%Linear Programming

n = 5;  % dimension of x
m = 4;  % number of equality constraints

c  = rand(n,1) + 0.5;    % create nonnegative price vector with mean 1
x0 = abs(randn(n,1));    % create random solution vector

A = abs(randn(m,n));     % create random, nonnegative matrix A
b = A*x0;

linprog(c, A, b, 1.0, 1.0)