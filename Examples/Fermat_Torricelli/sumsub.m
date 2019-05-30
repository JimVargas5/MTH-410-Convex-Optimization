function w=sumsub(A,x)

m=size(A,1);
w=0;
for i=1:m
    w=w+weaksubnorm(x-A(i,:));
end
end