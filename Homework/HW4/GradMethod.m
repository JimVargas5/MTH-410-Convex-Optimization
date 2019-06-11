function [w,iterations]=GradMethod(w0,X,m,y,epsilon)
    iterations=0;
    grad=0;
    w=w0;
    
    % First iteration so the gradient is non-zero
    for i=1:m
        z=1/(1+exp(-X(i,:)*w));
        grad=grad+(z-y(i))*X(i,:)';
    end
    w=w-.01*grad;
    iterations=iterations+1;
    
    % The main convergence criterion check
    while (norm(grad)>epsilon)
        grad=0;
        for i=1:m
            z=1/(1+exp(-X(i,:)*w));
            grad=grad+(z-y(i))*X(i,:)';
        end
        w=w-.01*grad;
        iterations=iterations+1;
        %disp(norm(grad));
    end
end