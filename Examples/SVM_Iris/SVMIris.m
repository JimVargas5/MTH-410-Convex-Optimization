clc;
clear all;
%B=xlsread('IrisNew.xls');
%B=load('irisversicolorandvirginica.txt');
B=load('irissetonaandversicolor.txt');
A=B(1:80,2:5); %Extract 80% of the observations for training
A(:,5)=ones(80,1); %Adding ones to the last column
y=B(1:80,1);%y training
A1=B(81:100,2:5);%Extract 20% of the observations for testing
A1(:,5)=ones(20,1);%Adding ones to the last column
y1=B(81:100,1);%y testing

m=size(A,1);
n=size(A,2);
w=zeros(1,n);%The starting point as a row vector
N=5000; %The number of iterations
lambda=8.^(-5:5); %Generate different penalty paramneters


for l=1:length(lambda)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       THE STOCHASTIC SUBGRADIENT METHOD ITERATIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for k=1:N
    temp=randperm(m); %Get a random index from 1 to m
    i=temp(1);
        if y(i)*A(i,:)*w'<1
        sub=-lambda(l)*y(i)*A(i,:)+w;
        else
            sub=w;
        end
        w=w-1/(k)*sub;
        
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       TEST THE RESULT FOR EACH PENALTY PARAMETER
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sum=0;
for i=1:size(A1,1)
    if A1(i,:)*w'>0&&y1(i)==1
        sum=sum+1;
    end
    if A1(i,:)*w'<0&&y1(i)==-1
        sum=sum+1;
    end
end
eval(l)=100*sum/20;

end
disp(eval); %Display the prediction result








        
        