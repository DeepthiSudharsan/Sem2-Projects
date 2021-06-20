function x = lasso(A, b, lambda, rho)
%admmtest2.m

MAX_ITER = 10;
RELTOL   = 1e-2; %error tolerance for ADMM

[m, n] = size(A);
Ata = A'*A;
Atb = A'*b;

x = zeros(n,1);
z = zeros(n,1);
u = zeros(n,1);

for k = 1:MAX_ITER

    % x-update
    x_1 = inv(Ata - rho*eye(n)) * (Atb - rho * (z - u));
    % z-update 
    z_1 = (lambda/rho)*(x_1-(u/rho));
    % u-update
    u_1 = u + RELTOL*(x_1 - z_1);
    
    z = z_1;
    x = x_1;
    u = u_1;
    
end
end