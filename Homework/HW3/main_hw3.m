% Jim Vargas
% MTH 410
clc, format compact

disp(newline+""+newline+"Fermat-Toricelli version of PROBLEM 2 #########################");
A=cell2mat(struct2cell(load("UsCity.mat"))); m=size(A,1); n=size(A,2); 
%m,n
    % Not sure about details of LINE 6, but data is imported as a struct
    % instead of a matrix. Therefore to use the data as a matrix, it must
    % first be converted.
x=[mean(A(:,1)),mean(A(:,2))]; 
y=[0,0];
N=100;
% In this problem, both x and y seem to converge after 50-ish iterations

v1=zeros(1,N); % good guess, regular update strategy
v2=zeros(1,N); % good guess, minarg update strategy
v3=zeros(1,N); %bad guess, min update strategy
v1(1)=sumDistances(x,A);
v2(1)=v1(1);
v3(1)=sumDistances(y,A);

for i=2:N
    x=x - (1/i)*weakSub(x,A);
    y=y - (1/i)*weakSub(y,A);
    v1(i)=sumDistances(x,A);
    v2(i)=min(v2(i-1),sumDistances(x,A));
    v3(i)=min(v3(i-1),sumDistances(y,A));
end
fprintf('A suboptimal solution is:');
disp(x);

figure
plot(1:N,v1,"."); title("Good guess, regular update strategy");
figure
plot(1:N,v2,"."); title("Good guess, minarg update strategy");
figure
plot(1:N,v3,"."); title("Bad guess, minarg update stategy");

% TODO: Implement a convergence criterion. This should involve a WHILE loop
% and checking to see whether or not the current term is sufficiently close
% to the previous few terms, although this will be tricky if the initial
% guess is very good, as in x here; x does not actually begin a descent
% until about 40 iterations, while y begins a descent immediately. Upon
% playing around with graphs, this problem only manifests if we use the
% minarg strategy as employed in plots for v2 and v3, since this allows 
% the possibility for x or y to retain an old value for an indefinite 
% number of iterations.


