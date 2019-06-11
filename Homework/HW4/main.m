% Jim Vargas
% MTH 410 Homework 4
clc, format compact

disp(newline+""+newline+"PART 1");
A=load("LogisticData.txt"); A=A'; 
y=A(:,2); m=size(A,1);
O=ones(m,1); X=A(:,1); X=[X,O]; % Format Data
epsilon=10^-4; 
w0=[0,0]';


disp("Results with Gradient Descent ##############################");
tic
[w1,n1]=GradMethod(w0,X,m,y,epsilon);
toc
disp("Coeffs. for w,b:"); disp(w1);
disp("Iterations: "+n1);

disp("Prediction:");
t=-X*w1;
for i=1:m
    t(i)=1/(1+exp(t(i)));
end
disp(t);
disp("Magnitude of total errors: (Is this a useful thing to interpret?)");
disp(norm(y-t));


disp(newline+"Results with Newton's Method ##############################");
tic
[w2,n2]=NewtonMethod(w0,X,m,y,epsilon);
toc
disp("Coeffs. for w,b:"); disp(w2);
disp("Iterations: "+n2);

disp("Prediction:");
t=-X*w2;
for i=1:m
    t(i)=1/(1+exp(t(i)));
end
disp(t);
disp("Magnitude of total errors:");
disp(norm(y-t));

% figure
% plot(1:length(X),X,"."); title("X data");

