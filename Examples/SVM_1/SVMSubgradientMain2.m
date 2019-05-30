clc;
clear all;

A=load('DataSetR2.txt'); %Read the dataset to a matrix
X=A(:,1:2); %x is the first two colums of the matrix
O=ones(200,1);%Add ones to the third colums
X=[X O];%The extended matrix
y=A(:,3);%Get the y with label 1 or -1
m=size(A,1);

w=[0 0 0]; %Choose a starting point
c=800; %Penalty parameter
for i=1:2000
    sub=[0 0 0]; %Computing a subgradient
    for t=1:m
        if y(t)*X(t,:)*w'<1
        sub=sub+c/m*((-y(t)*X(t,:))+w/m);
        else
            sub=sub+c/m*(w/m);
        end
    end
    w=w-1/i*sub;
end
for k=1:m
    if y(k)==-1
    plot(X(k,1), X(k,2), '*');
        hold on
    end
    hold on
    if y(k)==1
                plot(X(k,1), X(k,2), 'r*');
        hold on
    end
end
f=@(u) -w(1)/w(2)*u-w(3)/w(2);
t=0:0.1:20;
y=f(t);
plot(t,y,'*');
w


        
        