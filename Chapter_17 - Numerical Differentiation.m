%% *1. Show derivative of cos(x) and compute maximum error between numerical derivative and exact solution.
clc; clear all; close all   % start clean
h = 0.1;                    % step size
x = 0:h:2*pi;               % define grid
y = cos(x);                 % compute function
forward_diff   = diff(y)/h;           % compute vector of forward differences
x_diff         = x(1:length(x)-1);    % compute corresponding grid
exact_solution = -sin(x_diff);        % compute exact solution
plot(x_diff, forward_diff, 'LineStyle', '--');
hold on
plot(x_diff, exact_solution);
max_error = max(abs(exact_solution-forward_diff))   % compute max error 
---------------------------------------------------------------------------------------------------------------------------

%% *2. Show derivative of sin(x) and compute maximum error between numerical derivative and exact solution.
clc; clear; close all;
x = linspace(0, 2*pi, 100);
y = sin(x);
yp = cos(x);
dx = diff(x);
dy = diff(y);
yp_hat = dy./dx;
error = max(abs(yp(1:end-1) - yp_hat));
figure;
plot(x,y)
hold on 
plot(x(1:end-1), yp_hat, 'LineStyle', ':')
plot(x, yp, 'LineStyle', '--')
legend('sin(x)', 'numerical derivative', 'exact solution')
---------------------------------------------------------------------------------------------------------------------------
 
%% *3. Symbolic function differentiation.
clc; clear; close all;
syms x;
y = x^3 + 2*x +10;
yp = diff(y, x);     % dy/dx
pretty(yp)           % nice view of the function
---------------------------------------------------------------------------------------------------------------------------

%% *4. Compute the second order of differentiation for f(x) = 5*x^4.
clc; clear; close all
syms x;
y = 5*x^4;
order = 2;
diff(y, order)
---------------------------------------------------------------------------------------------------------------------------
