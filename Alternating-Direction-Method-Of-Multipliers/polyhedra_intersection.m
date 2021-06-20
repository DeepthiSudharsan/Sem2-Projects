function x = polyhedra_intersection(A1, b1, A2, b2, alpha)

MAX_ITER = 5;
n = size(A1,2);
x = zeros(n,1);
z = zeros(n,1);
u = zeros(n,1);

for k = 1:MAX_ITER

    % x-update
    % use cvx to find point in first polyhedra
    cvx_begin quiet
        variable x(n)
        minimize (sum_square(x - (z - u)))
        subject to
            A1*x <= b1
    cvx_end

    % z-update with relaxation
    zold = z;
    x_hat = alpha*x + (1 - alpha)*zold;
    % use cvx to find point in second polyhedra
    cvx_begin quiet
        variable z(n)
        minimize (sum_square(x_hat - (z - u)))
        subject to
            A2*z <= b2
    cvx_end

    u = u + (x_hat - z);

end

end
