function x = qsolve1(P,q,A,b,rho,tolr,tols,iternum)
m=size(A,1);
n=size(P,1);
u=ones(n,1);
u(1,1)=0;
z=ones(n,1);
k=0;
nr=1; ns=1;

% convergence is controlled by norm nr of the primal residual r
% and the norm ns of the dual residual s

while(( k <= iternum) && (ns > tols || nr < tolr))
    z0=z;
    k=k+1;
    %KKT Matrix LHS
    KK = [P + rho*eye(n) A';A zeros(m,m)];
    %KKT Matrix RHS
    bb = [-q + rho*(z-u); b];
    %Solving KKT Matrix
    xx=KK\bb;
    %ADMM Updates
    x = xx(1:n);
    z = poslin(x+u); %Positive linear transfer function
    u = u + x - z;
    % To test stopping criterion
    r = x - z;  %primal rersidual
    nr = sqrt(r'*r); %norm of primal residual
    s = rho*(z-z0); % dual residual
    ns = sqrt(s'*s); %norm of dual residual
end
end
