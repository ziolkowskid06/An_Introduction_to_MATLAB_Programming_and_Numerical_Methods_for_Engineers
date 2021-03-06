%%% *1. Consider data x and y. Do last squares regression with an estimation function definded by Y(x) = alpha(1)*x + alpha(2)
x = [0:0.01:1]';
y = 1 + x + x.*rand(size(x));
A = [x, ones(size(x))];       % the column of ones comes from x^0
alpha = inv(A'*A)*A'*y;       % altrnatively: pinv(A)*y   or   A\y
hold on
plot(x, alpha(1)*x + alpha(2), 'r')
plot(x, y, 'bo')
xlabel('x')
ylabel('y')
axis([0 1 0 3])
grid on
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

%%% *2. This example shows how to perform simple linear regression using the accidents dataset. Formula y1 = beta1*x or y2 = beta(1) + beta(2)*x
    The example also shows how to calculate the coefficient of determination R^2 to evaluate the regressions: Rsq1 and Rsq2 for y1 nad y2 respectively.
load accidents
x = hwydata(:,14);             % Population of states
y = hwydata(:,4);              % Accidents per state
X = [ones(length(x),1) x];     % column of ones for beta(1)           
format long                    % longer format for better accuracy
beta1 = x\y;
beta = X\y;
y1 = beta1*x;
y2 = X*beta;
scatter(x,y)
hold on 
plot(x, y1)
plot(x, y2, '--')
xlabel('Population of state')
ylabel('Fatal traffic accidents per state')
title('Linear Regression Relation Between Accidents & Population')
legend('Data','Slope','Slope & Intercept','Location','best');          % The best location of the legend
grid on
Rsq1 = 1 - sum((y - y1).^2)/sum((y - mean(y)).^2);
Rsq2 = 1 - sum((y - y2).^2)/sum((y - mean(y)).^2);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

%%% *3a. Find coefficents for the function, having three points. Polynomial Fitting using polyfit.
x = [0 1 2];
y = [5 3 3];
polyfit(x,y,2);              % 2 if you want to generate coefficients for quadratic equation (result: [2 -3 5], hence y = x^2 - 3*x + 5)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

%%% *3b. To given function add noise and use regresssion. 
clc; clear, close all
f = @(x) x.^2 - 3*x + 5;      % create a function besed on coefficents calculated before 
sigma = 1.5;                  % coefficent that increase noises in the function
xmin = -1; xmax = 5;         
x = unifrnd(xmin, xmax, [100,1]);     % 100 points uniformly distributed  in the range of -1 and 1
y = f(x) + sigma*randn(size(x));      % to given function add normally distributed random noises
n = 2;                                % degree of the polynomial
[p, S] = polyfit(x, y, n);            % find coefficients to the new function; provide error information S to obtain error estimates
xx = linspace(xmin, xmax, 100);      
[yy, delta] = polyval(p, xx, S);      % use coefficients to form new function, generate error estimates
figure; 
plot(x, y, 'ro', 'MarkerSize', 8);
hold on;
plot(xx, yy, 'b', 'LineWidth', 2);
plot(xx, yy - 2*delta, 'k--');              % for 95% prediction interval below the curve
plot(xx, yy + 2*delta, 'k--');              % for 95% prediction interval above the curve         
legend('Data Poins', 'Fitted Polynomial', '95% Prediction Interval');
xlabel('x');
ylabel('y');
grid on
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

%%% *4. Curve Fittnig with Polynomials using polyfit and polyval.
%% Generate Data
x1 = [0:2:20]';
y1 = 0.1*x1.^2 + 1.2*x1 + 5;
data = table(x1,y1);               % create table of data
clear x1; clear y1;                % remove x1,y1 to save memory
%% Finding the Polynomial Coefficients
[p2] = polyfit(data.x1, data.y1, 2);           % if you certain for quadratic equation, use 2
%% Copmuting Polynominal Data
x2 = [1:2:19]';
datafit = table(x2);
clear x2;
[datafit.y2p2] = polyval(p2, datafit.x2);      % add column to the table
%% Scatter Plot
figure(1);
scatter(data.x1, data.y1, 100, 'fill',...
'MarkerEdgeColor', [112/255, 48/255, 160/255],...
'MarkerFaceColor', [0/255, 176/255, 80/255],...
'LineWidth',1,...
'MarkerFaceAlpha', 0.5,...
'MarkerEdgeAlpha', 0.5);
hold('on');
plot(datafit.x2, datafit.y2p2, 'color', 'r', 'LineWidth', 2);
hold('off');
set(gca, 'FontSize', 10);
xlabel('x');
ylabel('y');
title('Polynomial');
grid('minor');
equation = sprintf('y = %fx^2 + %fx + %f', p2(1), p2(2), p2(3));
legend('y1', equation, 'location', 'NorthWest');
