%Jim Vargas
%MTH 410 Convex Optimization
%HW 1 Set 2
format compact


%Exercises
%Problem 1
A=[1,100,2,6;
    0,-6,2012,7;
    1999,0,3,8;
    1,-2,6,4];
B=[8,-100,7,-2;
    7,-6,-9,5;
    8,-2,5,1;
    2,-2,4,2];

A+B, A-B, A*B, B*A, A^3, (A*B)', 126*(A+B), A.*B, A./B, A.^2
det(A)
eig(A)
A(2,:)+A(4,:);

%Problem 2
X1=rand(4);
X2=10+(20-10)*rand(4);

%Problem 3
a=[0, pi, 1, 2*pi];
sin(a), exp(a), a.^2
norm(a)

%Problem 4
y= -1+(1-(-1))*rand(1,100);
max(y); min(y);



