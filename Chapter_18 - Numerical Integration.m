%% *1. Use all integration rules to approximate sin(x)dx over total interval [0 pi] with 11 evenly spaced grid points over the whole interval.
       Compare this value to the exact value of 2.
clc; clear
a = 0;                              % left border
b = pi;                             % right border
n = 11;                             % 11 points (10 subintervals)
h = (b-a)/(n-1);                    % rectangle's length
x = linspace(a,b,n);                % grid
f = sin(x);                         % function
I_riemannL   = h*sum(f(1:n-1))                                                  % Riemann Integral (left endpoint)
err_riemannL = 2 - I_riemannL
I_riemannR   = h*sum(f(2:n))                                                    % Riemann Integral (right endpoint)
err_riemannR = 2 - I_riemannR
I_mid        = h*sum(sin((x(1:n-1) + x(2:n))/2))                                % Midpoint Rule
err_mid      = 2 - I_mid
I_trap       = (h/2)*(f(1) + 2*sum(f(2:n-1)) + f(n))                            % Trapezoid Rule
err_trap     = 2 - I_trap
I_simp       = (h/3)*(f(1) + 2*sum(f(1:2:n-2)) + 4*sum(f(2:2:n-1)) + f(n))      % Simpson's Rule
err_simp     = 2 - I_simp
-----------------------------------------------------------------------------------------------------------------------------------------------

%% *2. Use MATLAB built-in function approximate sin(x)dx over total interval [0 pi] with 11 evenly spaced grid points over the whole interval.
       Compare this value to the exact value of 2.
clc; clear
a = 0;                              % left border
b = pi;                             % right border
n = 11;                             % 11 points (10 subintervals)
h = (b-a)/(n-1);                    % rectangle's length
x = linspace(a,b,n);                % grid
f = sin(x);                         % function
I_trapz = trapz(x,f)                % Trapezoid Rule
-----------------------------------------------------------------------------------------------------------------------------------------------

%% *4. Integrate y(t) = t^2 + 2*t. Rearange the result.
clc; clear;
y = inline('t^2 + 2*t', 't')      % crate a function
syms t                            % symbolic variable needed for symbolic integration
int(y(t), t);                     % integrate a function
pretty(ans)                       % after rearrangement                      
-----------------------------------------------------------------------------------------------------------------------------------------------

%% *5. Calculate an integral of h(n) = sin(n) + cos(n)^2 over the range [-4 10].
clc; clear;
h = inline('sin(n) + cos(n)^2','n')     % crate a function
syms n                                  % symbolic variable needed for symbolic integration
h_int = int(h(n), n);                   % integrate a function
sol = int(h(n), -4,10)                  % integration over the range
double(sol)                             % rearrange the result
pretty(h_int)                           % show function after integration
-----------------------------------------------------------------------------------------------------------------------------------------------

%% *6. Calculate a double integral of 1/(sqrt(x+y)*(1+x+y)^2) over the range [0 1] [0 1-x].
clc; clear;
g = @(x,y) 1./(sqrt(x+y).*(1+x+y).^2)           % crate function handle
integral2(g, 0, 1, 0, @(x) 1-x)                 % integration (use function handle!)
-----------------------------------------------------------------------------------------------------------------------------------------------
