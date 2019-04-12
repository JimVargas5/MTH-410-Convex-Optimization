%tutorial following David Griffith's from U. of Dundee
format compact
"Vectors";
v1=[3+ 4 5];
v1;
length(v1); %magnitude
v2=[3 +4 5];
length(v2);
v5=[-1,12,3,44], sort(v5); %sorts entries into ascending order
v5(2); %get the element in the parentheses
eps; %very small thing

%In general, use a:b:c to make incremented vectors
%start at a, increment by b, up till but not past c.
x = [1, 0+1*i, 5i, 3];
x'; %complex conjugate transpose

diary mysession %starts recording stuff that gets printed
"poop";
diaryVector = [1:2:8];
"This is after the 'diary' command";
diary off %typically type this in the command window

%use command 'save _thissession_' in command window to save calculations
%load them up with 'load _thissession_'

%Graphing
N=100; h=1/N; x=0:h:2; %domain restrictions here
y=sin(3*pi*x);
plot(x,exp(x),"b--"), hold off; %plot is in a pop-up window
%plot command has third argument for line style and color
%'hold' prevents it from clearing for the next plot, turn off with 'hold off'
title("Graph of y=sin(3pi x)")
xlabel("x")
ylabel("y")
grid %or 'grid off'

%hold messes up ordering for coloring and such
plot(x,y,'yo', x,cos(3*pi*x),'k-');
legend("Sine", "Cosine"); title("Multi plot");
xlabel('X'); ylabel("Y"); grid;
%can do sub plots for splitting up the graphs



