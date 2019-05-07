function [x,fvalue,iterations]=GradientMethodE(A,b,c,x0,epsilon)
    x=x0;
    fvl=@(u) u'*A*u+b'*u+c; % specific f
    gd=@(u) 2*A*u + b; % specific gradient of specific f
    grad=gd(x);
    iterations=0;
    
    while (norm(grad)>epsilon)
        t=(norm(grad))^2/(2*grad'*A*grad);
        x=x-t*grad; 
        grad=gd(x); 
        iterations=iterations+1;
        fvalue=fvl(x); 
    end
end
