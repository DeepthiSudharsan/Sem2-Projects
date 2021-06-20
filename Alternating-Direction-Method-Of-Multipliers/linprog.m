function z = linprog(c,A,b,rho,alpha)
%admmtest1.m

MAX_ITER = 10;

%rho is the augmented Lagrangian parameter.
%sol is returned in vector z
% alpha is the over-relaxation parameter (typical values for alpha are
% between 1.0 and 1.8).

[m n] = size(A);
x = zeros(n,1);
z = zeros(n,1);
u = zeros(n,1);
for k =1:MAX_ITER
    %x-update
    tmp = [rho*eye(n), A';A, zeros(m)]\[rho*(z-u)-c; b];
    x = tmp(1:n);
    
    %z-update with relaxation
    zold = z;
    x_hat = alpha*x+(1 - alpha)*zold;
    
    z = pos(x_hat + u);
    
    u = u + (x_hat - z);
end


