clc;
clear all;
close all;
P2 = [4 1 0 0;1 4 1 0;0 1 4 1;0 0 1 4];
q2 = [-4;-4;-4;-4];
A2 = [1 1 -1 0;1 -1 -1 0];
b2=[0;0];
MAX_ITER = 100;
rho2 = 10;
tr = 10^(-12);
ts = 10^(-12);

Fvalue = qsolve1(P2,q2,A2,b2,rho2,tr,ts,MAX_ITER);
xvalue = Fvalue(1)
yvalue = Fvalue(2);
zvalue = Fvalue(3);
tvalue = Fvalue(4);
