%This is the main program
A=[1 0;0 2];
b=[2 1]';
c=3;
epsilon=10^(-5);
x0=[10 10]';
alpha=1/4;
beta=1/2;
alpha=1/4;
s=2;

tic

[x,fvalue]=GradientMethodB(A,b,c,x0,epsilon,alpha,beta,s);
%clc %clear the screen
disp(x); %print out the approximate optimal solution
fprintf('The approximate optimal value is %2.6f\n',fvalue); %print out 
%the approximate optimal value

toc