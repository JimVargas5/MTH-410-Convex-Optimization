% Jim Vargas
% MTH 410 HW 2
format compact
clc

% SET 1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
"Problem 1"; disp("PROBLEM 1 ################################");
A=[1 1/2;
    1/2 1];
b=[1 -1]';
c=0;
epsilon=10^(-4);
x0=[5 10]';
"(a)";
    disp("BM ELS");
    
    [x,fvalue,iters]=GradientMethodE(A,b,c,x0,epsilon);
    disp("Approx. optimal solution x:"), disp(x);
    fprintf("Associated optimal value f(x): %6.4f\n", fvalue);
    fprintf("Number of iterations: %6.0f\n", iters);
"(b)";
    disp(newline+"GM const step size");
    t=.1;
    
    [x,fvalue,iters]=GradientMethod(A,b,c,x0,t,epsilon);
    disp("Approx. optimal solution x:"), disp(x);
    fprintf("Associated optimal value f(x): %6.4f\n", fvalue);
    fprintf("Number of iterations: %6.0f\n", iters);
"(c)";
    disp(newline+"GM backtracking");
    alpha=.5; beta=.5; s=1; % parameters
    
    [x,fvalue,iters]=GradientMethodB(A,b,c,x0,epsilon,alpha,beta,s);
    disp("Approx. optimal solution x:"), disp(x);
    fprintf("Associated optimal value f(x): %6.4f\n", fvalue);
    fprintf("Number of iterations: %6.0f\n", iters);

    
"Problem 2"; disp(newline+""+newline+"PROBLEM 2 ################################");
A=hilb(5); % 5x5 Hilbert Matrix: A_{i,j} = \frac{1}{i+j-1}, i=1,2,...,5
b=[0,0,0,0,0]';
c=0;
epsilon=10^(-2);
x0=[1,2,3,4,5]'; 
% Two newline concatenated does not seem to work (?)
"(a)";
    disp("BM ELS");
    [x,fvalue,iters]=GradientMethodE(A,b,c,x0,epsilon);
    disp("Approx. optimal solution x:"), disp(x);
    fprintf("Associated optimal value f(x): %6.4f\n", fvalue);
    fprintf("Number of iterations: %6.0f\n", iters);
"(b)";
    disp(newline+"GM const step size");
    t=.1;
    [x,fvalue,iters]=GradientMethod(A,b,c,x0,t,epsilon);
    disp("Approx. optimal solution x:"), disp(x);
    fprintf("Associated optimal value f(x): %6.4f\n", fvalue);
    fprintf("Number of iterations: %6.0f\n", iters);
"(c)";
    disp(newline+"GM backtracking");
    alpha=.5; beta=.5; s=1; % parameters
    [x,fvalue,iters]=GradientMethodB(A,b,c,x0,epsilon,alpha,beta,s);
    disp("Approx. optimal solution x:"), disp(x);
    fprintf("Associated optimal value f(x): %6.4f\n", fvalue);
    fprintf("Number of iterations: %6.0f\n", iters);
    
    
"Problem 3"; disp(newline+""+newline+"PROBLEM 3 ################################");
"(a)";
    

% SET 2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





