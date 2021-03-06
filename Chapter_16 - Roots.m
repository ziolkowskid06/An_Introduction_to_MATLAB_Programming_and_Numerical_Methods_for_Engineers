%% *1. Use fzero function to compute the root of f(x)=cos(x)-x near -2. 
f = @(x) cos(x) - x;
r = fzero(f, -2);     % Root near -2
F = f(r);             % Verification, should be close to zero
-------------------------------------------------------------------------------------------------------------------------

%% *2. Proof, that f(x)=1/x has no roots. 
f = @(x) 1./x;
r = fzero(f,-2);
F = f(r);             % No roots --> the number should be very high
-------------------------------------------------------------------------------------------------------------------------

%% *3. Compute roots for f(x) = x^2 - x - 1
a = [1 -1 -1];   % all coefficient of the function
roots(a)
-------------------------------------------------------------------------------------------------------------------------

%% *4. Find the roof of f(x) = x^2 - 5*exp(-x) + 1. Plot the function to check the result.
clc; clear; close all;
f = @(x) x.^2 - 5*exp(-x) + 1;
fzero(f, 0)
ezplot(f)
grid on
-------------------------------------------------------------------------------------------------------------------------

%% *5. Solve system of nonlinear equations: xy-5y+10=0 and x^3-y^2=2. 
       Hint: x, y change to x(1) and x(2) respectively.
clc; clear
f = @(x) [x(1)*x(2)-5*x(2)+10; x(1)^3-x(2)^2-2];     % create function handle for equations
[x, fval] = fsolve(f, [1 1])                         % find the root (x) at starting point (1,1), 
-------------------------------------------------------------------------------------------------------------------------

%% *6. Solve system of linear equations: x-2y+3z=2; x+4y-5z=6; 5x-y-z=12.
clc; clear;
A = [1 -2 3; 1 4 -5; 5 -1 -1];
b = [2 6 12]';
linsolve(A,b)
-------------------------------------------------------------------------------------------------------------------------
