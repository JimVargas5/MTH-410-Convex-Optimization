clc
clear all
A=10*rand(25,2); %A
%A=[ 0 -3; 3 0; 0 3];
x=[-5 5];
N=10;
alpha=0.1;
v=[];
v(1)=fun_val(A,x);
for i=2:N
    x=x-1/i*sumsub(A,x);
    v(i)=min(v(i-1),fun_val(A,x));
end
figure 
fprintf('A suboptimal solution is:');
x
plot(1:N,v,'*');

figure

for i=1:size(A,1)
    plot([x(1) A(i,1)],[x(2) A(i,2)]);
   axis([0,10,0,10])
    hold on
end