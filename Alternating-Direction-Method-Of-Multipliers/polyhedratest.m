clc;
clear all;
close all;
n = 5;      % dimension of variable
m1 = 10;    % number of faces for polyhedra 1
m2 = 12;    % number of faces for polyhedra 2

c1 = 10*randn(n,1);        % center of polyhedra 1
c2 = -10*randn(n,1);       % center of polyhedra 2
% pick m1 n m2  random directions with different magnitudes for A1 n A2
% resp

% the value of resp b is found by traveling from the center along the normal
% vectors in resp A and taking its inner product with resp A.

A1 = diag(1 + rand(m1,1))*randn(m1,n);
b1 = diag(A1*(c1*ones(1,m1) + A1'));

A2 = diag(1 + rand(m2,1))*randn(m2,n);
b2 = diag(A2*(c2*ones(1,m2) + A2'));

% find the distance between the two polyhedra--make sure they overlap by
% checking if the distance is 0, if not expand A1 and A2 by a little more than half the
% distance
cvx_begin quiet
    variables x(n) y(n)
    minimize sum_square(x - y)
    subject to
        A1*x <= b1
        A2*y <= b2
cvx_end
 
if norm(x-y) > 1e-4
    A1 = (1 + 0.5*norm(x-y))*A1;
    A2 = (1 + 0.5*norm(x-y))*A2;
    % recompute b's as appropriate
    b1 = diag(A1*(c1*ones(1,m1) + A1'));
    b2 = diag(A2*(c2*ones(1,m2) + A2'));
end

x = polyhedra_intersection(A1, b1, A2, b2, 1.0)
