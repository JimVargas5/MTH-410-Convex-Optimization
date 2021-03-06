%Jim Vargas
format compact
"Tutorial here";

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
"Identity"
A6=eye(3)
"Size command: returns size of matrix. Returns scalar if quare, vector otherwise"
A7=rand(size(A6))
    use size(a,1) for number of rows
    use size(a,2) for number of columns
"Diagonal matrix based on a given vector"
A8=diag(x1)
"Create vector with random permutation of integers up to n=3"
x3=randperm(3)

%{
    Some vector/matrix operations
Euclidian norm: norm(a)
    also length(a) for dim
min, max
Find a number k in a vector a: find(a==k), returns position of k
inverse of matrix: inv(a)
transpose: a'
determinant, eigenvalues in a vector: det(a), eig(a)
Solve Ax=b, where A is invertible: x=A\b
Can get ith row, jth column of a:
b=a(2,:) or b=a(:,j)
b=a(i,j) the ijth position

multiply/divide componentwise matrices:
    a.*b or a./b
        just multiplies or divides each element by the corresponding one in
        the other
%}