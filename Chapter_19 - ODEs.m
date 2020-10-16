%%% *1. The differential equation df(t)/dt = e^(-1) with initial condition f0 = -1 has the exavt solution f(t) = -e^(-1).
%%%     Approximate the solution to this initial value problem between 0 and 1 in increments of 0.1 using the Explicity Euler Formula.
%%%     Plot the difference between the approximated solution and the exact solution.
%% Euler Approximation For Exponential Function
clc; clear all; close all;
%% Define Parameters
F = @(t,S) exp(-t);       % define differential equation
h = 0.1;                  % define step size
t = 0:h:1;                % define numerical grid
f0 = -1;                  % define inital condition
%% Do Explicit Euler
f = f0;                   % initialize solution
% for each time step j
for j = 1:length(t)-1
    f(j+1) = f(j) + h*F(t(j),f(j));       % Euler Step
end
%% Plot Approximate and Exact Solution
plot(t, f, 'b--', t, -exp(-t), 'g')
title('Approximate and Exact Solution for Simple ODE')
xlabel('t')
ylabel('f(t)')
grid on
axis tight
legend('Approximate', 'Exact')
-------------------------------------------------------------------------

%%% *2. Use the Euler Explicit, Euler Implicit, and Trapezoidal Formulas to soleve the pendulum equation over the time interval [0, 5]
%%%     in increments of 0.1 and for an initial solution of s0 = [1 0]'. For the model parameters using sqrt(g/l)=4. 
%%%     Plot the approximate solution on a single graph.
 clc; clear all, close all;
 %% Define Parameters
 h       = 0.1; % define step size
 t       = 0:h:5; % define numerical grid
 w       = 4; % oscillation frequency of pendulum
 s0      = [1; 0];
 M_E = [1, h; -w^2*h, 1];
 M_I = inv([1, -h/2; w^2*h/2, 1]);
 M_T = inv([1, -h/2; w^2*h/2, 1])*[1, h/2; -w^2*h/2, 1];
 %% Do integrations
 S_E = s0';
 S_I = s0';
 S_T = s0';
 for j = 1:length(t)-1
     S_E(j+1,:) = [M_E*S_E(j,:)']';
     S_I(j+1,:) = [M_I*S_I(j,:)']';
     S_T(j+1,:) = [M_T*S_T(j,:)']';
end
%% Plot Position Solutions
plot(t, S_E(:,1), 'b-.', t, S_I(:,1), 'g:', t, S_T(:,1), 'r--', t, cos(w*t), 'k')
axis([0 5 -3 3])
grid on
title('Solutions for Various Integration Schemes')
xlabel('t')
ylabel('\Theta (t)')
legend('Explicit', 'Implicit', 'Trapepzoidal', 'Exact')
