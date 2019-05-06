function [x,fvalue]=GradientMethodE(A,b,c,x0,epsilon)
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
%==============================================================
%OUTPUTS:
%x          An approximate optimal solution.
%fvalue     The associate approximate optimal value

x=x0;
%l=2*norm(A,2);
%t=1/(2*l); %The stepsize
grad=2*A*x+b;
V=[];
iter=0;
while (norm(grad)>epsilon)
    t=(norm(grad))^2/(2*grad'*A*grad);
        x=x-t*grad; %update x
    grad=2*A*x+b; %recompute the gradient
    iter=iter+1;
    fvalue=x'*A*x+b'*x+c; %compute the function value at x
    V(iter)=fvalue;
end
    plot(1:iter,V);
end