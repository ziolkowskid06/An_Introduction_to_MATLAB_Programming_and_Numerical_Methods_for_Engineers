%% *1. Plot the sin function along with the first, third, fifth and seventh order Taylor series approximations.
clc;clear;close all
c = {'b', 'g', 'r', 'c'};
x = linspace(-pi, pi, 200);
y = zeros(size(x));
hold on
for n = 0:3
    y = y + ((-1)^n*x.^(2*n+1))/(factorial(2*n+1));
    plot(x,y,c{n+1})
end
plot(x, sin(x), 'k')
grid on
title('Taylor Series Approximations of Various Orders')
xlabel('x')
ylabel('y')
legend('First Order', 'Third Order', 'Fifth Order', 'Seventh Order', 'Analytic')
axis tight
-------------------------------------------------------------------------------------------------------------------------------------

%% *2. Use for-loop to calculate two series 
n=5000;
series1=0;
series2=0;
for i=1:n
    p=(((i+1)/i)^i)/(i^2);
    series1=series1+p;
    p=(sqrt(i+1)-sqrt(n-1))/(i^.75);
    series2=series2+p;
end
-------------------------------------------------------------------------------------------------------------------------------------

%% *3. Use symbolic method to calculate series. 
syms n;
f=1/n^2*((n+1)/n)^n;
series = symsum(f,n,1,inf);
vpa(series)                   % Variable-Precision Arithmetic, evaluates each element of the symbolic input
-------------------------------------------------------------------------------------------------------------------------------------

%% *4. Use Taylor Series expansion for e(x) for -2 <= x <= 2. 
clear; clc; close all
x = -2:0.1:2;
y = exp(x);
fig = figure();
set(fig, 'color', 'white')
plot(x, y, 'LineWidth', 2)
grid on
xlabel('x')
ylabel('y')
N = 5;       % N^th order of Taylor Series
Y = 0;
for n = 0:N
  Y = Y + (x.^n)./factorial(n);         % Taylor Series for exponential function
end
hold on
plot(x, Y, 'r-', 'LineWidth', 2)
legend('Actual Function', sprintf('Taylor Series Expansion - %d^t^h order', N), 'Location', 'NorthWest') 
-------------------------------------------------------------------------------------------------------------------------------------
 
%% *5. Calculate the sum i^2 for i = 1:4.
% for-loop solution
theSum = 0;
for i = 1 : 4
  theSum = theSum + i ^ 2;
end
% vectorized solution
i = 1 : 4;
theSum = sum(i .^ 2)
% symbolic solution
syms i                           % Creat symbolic variable 'i'
theSum = symsum(i^2, i, 1, 4);   % Use symsum to run your summation operation
-------------------------------------------------------------------------------------------------------------------------------------
