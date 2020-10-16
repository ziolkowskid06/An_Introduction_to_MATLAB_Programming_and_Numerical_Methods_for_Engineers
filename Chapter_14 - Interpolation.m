%% *1. Find linear interpolation at x = 1.5.
X = [0 1 2];
Y = [1 3 2];
x = 1.5;
y = interp1(X, Y, x);
plot(X(:), Y(:), x, y, 'o')
xlabel('x')
ylabel('y')
title(sprintf('Linear interpolation at x = %g', x))
grid on
---------------------------------------------------------------------------------------------------------------------------

%% *2. Plot cubic spline interpolation.
X = [0 1 2];
Y = [1 3 2];
x = linspace(0, 2, 100);
y = interp1(X, Y, x, 'PCHIP');
plot(x, y, X, Y, 'o')
xlabel('x')
ylabel('y')
title('Cubic Spline Interpolation')
grid on
---------------------------------------------------------------------------------------------------------------------------

%% *3. Plot all type of interpolation
clc; clear; close all
x = [1 2 4 5];
y = [2 2 3 1]; 
method = {'linear', 'nearest', 'next', 'previous', 'pchip', 'v5cubic', 'makima', 'spline'};
xx = linspace(0, 6, 100);
for i = 1:length(method)
  yy = interp1(x, y, xx, string(method(i)));
  subplot(2,4,i)
  plot(x, y,'o')
  hold on
  plot(xx, yy)
  title(sprintf('%s method', string(method(i))))
  legend('Data Points', sprintf('%s model', string(method(i))), 'location', 'SouthWest')
  axis([0 6 0 4])
  grid on
end
---------------------------------------------------------------------------------------------------------------------------

%% *4. Interpolation for 2D gridded data. 
clc; clear; close all
[X, Y] = meshgrid(-5:5);
Z = peaks(X, Y);
[XX, YY] = meshgrid(-5:0.25:5);
ZZ = interp2(X, Y, Z, XX, YY, 'spline');
figure;
subplot(1,2,1)
surf(X, Y, Z) 
title('Orginal Data')
subplot(1,2,2)
surf(XX, YY, ZZ)
title('Model Output')
---------------------------------------------------------------------------------------------------------------------------

%% *5. Use Lagrange's interpolation to find Y at X = 55.
x = [0 20 40 60 80 100];
y = [26.0 48.6 61.6 71.2 74.8 75.2];
n = length(x) - 1;
X = 55;
sm = 0;
for i = 1:n+1
  pr = 1;
  for j = 1:n+1
    if j ~= i
    pr = pr * (X - x(j))/(x(i) - x(j));
    end
  end
  sm = sm + y(i) * pr;
end
Y = sm
---------------------------------------------------------------------------------------------------------------------------
