%Jim Vargas
%MTH 410 Convex Optimization
%HW 1 Set 2
format compact


%{ %}
"Create a row vector x starting with a, stepping by b, stopping at c"
x1=1:pi:12
"Row vector n=4 points linearly spaced btw and including a and b"
x2=linspace(2,5,4)
"Matrix A"
A1=[x1;x2;[0 1 0 1]]
"Random nxn matrix A whose elements are uniformly distributed in interval (0,1)"
A2=rand(3) %Probability matrix?
"As above but mxn on interval (a,b)->(2,5)"
A3=2+(5-2)*rand(2,4)
"Zero matrix mxn"
A4=zeros(4,2)
"Matrix with only ones"
A5=ones(1,11)
