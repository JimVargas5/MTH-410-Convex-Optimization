function [w, iterations]=GMregression(A,y,w0,m,epsilon)
% Good for f(x)=(1/(2*m))*norm(A*w-y)^2
% Minimizer for coeffs. for linear regression
    w=w0;
    L=norm(A'*A)/m; %Lipshitz constant
    t=1/L;
    %t=.00001;
    %L=@(u) (1/(2*m))*norm(A*u-y)^2; % minimizer function
    gd=@(u) (A'/m)*(A*u-y); % gradient of minimizer
    grad=gd(w);
    iterations=0;
    
    while (norm(grad)>epsilon)
        w=w-t*grad; 
        grad=gd(w); % disp("\n"); disp(iterations); disp(norm(grad)); %disp(norm(grad)-epsilon);
        iterations=iterations+1;
    end
 end