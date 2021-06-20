clc;
clear all;
close all;
m = 4;       % number of examples
n = 3;       % number of features
p = 100/n;      % sparsity density

% generate sparse solution vector
x = sprandn(n,1,p);

% generate random data matrix
A = randn(m,n);

% normalize columns of A
A = A*spdiags(1./sqrt(sum(A.^2))', 0, n, n);

% generate measurement b with noise
b = A*x + sqrt(0.001)*randn(m,1);

x = regressor_sel(A, b, p*n, 1.0)