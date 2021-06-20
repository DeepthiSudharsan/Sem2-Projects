%lasso
clc;
clear all;
close all;
m = 4;       % number of examples
n = 5;       % number of features
p = 0.05;      % p = 0.05 is the sparsity density
x0 = sprandn(n,1,p);   
A = randn(m,n);
A = A*spdiags(1./sqrt(sum(A.^2))',0,n,n); % normalize columns
b = A*x0 + sqrt(0.001)*randn(m,1);
lambda = 1;
x = lasso(A, b, lambda, 1.0)
