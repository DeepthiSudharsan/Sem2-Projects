function x = total_variation(b, lambda, rho,alpha)
MAX_ITER = 1000;
n = length(b);
e = ones(n,1);
D = spdiags([e -e], 0:1, n,n);  %Sparse matrix formed from diagonals

x = zeros(n,1);
z = zeros(n,1);
u = zeros(n,1);

I = speye(n);
DtD = D'*D;

for k = 1:MAX_ITER

    % x-update
    x = (I + rho*DtD) \ (b + rho*D'*(z-u));

    % z-update with relaxation
    zold = z;
    Ax_hat = alpha*D*x +(1-alpha)*zold;
    a = Ax_hat + u;
    kappa = lambda/rho;
    z =  max(0, a-kappa) - max(0, -a-kappa);
   
    % u-update
    u = u + Ax_hat - z;
end
end