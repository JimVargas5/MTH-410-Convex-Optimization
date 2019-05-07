function [x,fvalue,iterations]=GradientMethodB(A,b,c,x0,epsilon,alpha,beta,s)
    x=x0;
    fvl=@(u) u'*A*u+b'*u+c; % specific f
    gd=@(u) 2*A*u + b; % specific gradient of specific f
    grad=gd(x);
    iterations=0;

    while (norm(grad)>epsilon)
        t=s;
        while (fvl(x)-fvl(x-t*grad)<alpha*t*(norm(grad))^2)
            iterations=iterations+1;
            t=beta*t;
        end % outside this while loop there seems to be fewer iterations
        
        x=x-t*grad; 
        grad=gd(x); 
        fvalue=fvl(x); 
    end
end
