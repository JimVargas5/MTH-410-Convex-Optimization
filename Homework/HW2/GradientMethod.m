function [x,fvalue,iterations]=GradientMethod(A,b,c,x0,t,epsilon)
    x=x0;
    %l Lipschitz constant set here if needed
    %t stepsize set here if needed
    fvl=@(u) u'*A*u + b'*u + c; % specific f
    gd=@(u) 2*A*u + b; % specific gradient of specific f
    grad=gd(x);
    iterations=0;
    
    while (norm(grad)>epsilon)
        x=x-t*grad; 
        grad=gd(x);
        fvalue=fvl(x);
        iterations=iterations+1;
    end
 end
