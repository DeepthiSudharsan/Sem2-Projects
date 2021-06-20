% Total variation denoising with random data
clc;
clear all;
close all;

n = 2;

x0 = ones(n,1);
for j = 1:3
    idx = randsample(n,1);
    k = randsample(1:10,1);
    x0(ceil(idx/2):idx) = k*x0(ceil(idx/2):idx);
end
b = x0 + randn(n,1);

lambda = 5;

x = total_variation(b, lambda, 1.0,1.0)