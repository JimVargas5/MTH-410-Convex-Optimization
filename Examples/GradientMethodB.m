function [x,fvalue]=GradientMethodB(A,b,c,x0,epsilon,alpha,beta,s)
%This function is used to minimize the function
%               f(x)=x^TAx+b^Tx+c
% using the gradient method with constant stepsize
%=============================================================
%INPUTS:
%A          This is a positive semidefinite matrix, i.e., a symmetric matrix of
%           order n such that all of its eigenvalues are nonnegative.
%b          This is a column vector of length n.
%c          This is a real number.
%x0         This is the starting point of the method.
%epsilon    This is the tolerance parameter.
%           alpha, beta, and s are constants used in backtracking line
%           search.
%==============================================================
%OUTPUTS:
%x          An approximate optimal solution.
%fvalue     The associate approximate optimal value

fvl=@(u) u'*A*u+b'*u+c; % define a function to compute the function value
x=x0;
grad=2*A*x+b;
while (norm(grad)>epsilon)
     t=s;
    while (fvl(x)-fvl(x-t*grad)<alpha*t*(norm(grad))^2)
    t=beta*t;
    end
        x=x-t*grad; %update x
    grad=2*A*x+b; %recompute the gradient
     fvalue=fvl(x); %compute the function value at x
    end
    end
