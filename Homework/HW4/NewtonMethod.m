function [w,iterations]=NewtonMethod(w0,X,m,y,epsilon)
    w=w0;
    grad=0;
    H=zeros(2,2);
    iterations=0;
    
    % First iteration so grad, H are non-zero
    for i=1:m
        z=1/(1+exp(-X(i,:)*w));
        grad=grad+(z-y(i))*X(i,:)';
        H=H+z*(1-z)*X(i,:)'*X(i,:);
    end
    w=w-pinv(H)*grad;
    iterations=iterations+1;
    
    % The main convergence criterion check
    while(norm(grad)>epsilon)
        grad=0;
        H=zeros(2,2);
        for i=1:m
            z=1/(1+exp(-X(i,:)*w));
            grad=grad+(z-y(i))*X(i,:)';
            H=H+z*(1-z)*X(i,:)'*X(i,:);
        end
        w=w-pinv(H)*grad;
        iterations=iterations+1;
    end
end