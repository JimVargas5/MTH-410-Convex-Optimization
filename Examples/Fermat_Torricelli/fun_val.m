function y=fun_val(A,x)

m=size(A,1);
y=0;
for i=1:m
    y=y+norm(x-A(i,:));
end
end