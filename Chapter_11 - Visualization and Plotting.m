%%% *1. Make a plot of the function f(x) = x^2 and g(x) = x^3 for -5 <= x <= 5. 
%%%     Use different colors and markers for each function. Add title, labels and the legend. 
%%%     Adjust axis and turn the grid on.
x = linspace(-5, 5, 100);
hold on
plot(x, x.^2, 'ko')
plot(x, x.^3, 'r*')
hold off
title(sprintf('Plot of Various Polyniminals from %d to %d', x(1), x(end)))
xlabel('x axis')
ylabel('y axis')
legend('quadratic', 'cubic')
axis([-6 6 -10 10])
grid on
------------------------------------------------------------------------------------

%%% *2. For given arrays create a 2x3 subplot using: plot, scatter, bar, loglog, semilogx, and semilogy.

%% Script for generating subplots of various

% author
% date

%% clean start
clc
clear
close all

%% define data
x = [0 1 2 3 4 5];
y = [1 2 4 8 16 2];

%% create subplot
subplot(2,3,1)
plot(x,y)
title('Plot')
xlabel('x')
ylabel('y')
grid on

subplot(2,3,2)
scatter(x,y)
title('Scatter')
xlabel('x')
ylabel('y')
grid on

subplot(2,3,3)
bar(x,y)
title('Bar')
xlabel('x')
ylabel('y')
grid on

subplot(2,3,4)
loglog(x,y)
title('LogLog')
xlabel('x')
ylabel('y')
grid on

subplot(2,3,5)
semilogx(x,y)
title('Semilogx')
xlabel('x')
ylabel('y')
grid on

subplot(2,3,6)
semilogy(x,y)
title('Semilogy')
xlabel('x')
ylabel('y')
grid on
----------------------------------------------------------------------------------------

%%% *3. Make a three-dimensional plot of the (x,y,t)
t = [0:pi/50:10*pi];
plot3(sin(t),cos(t),t)
grid on
axis square
title('Parametric Curve')
xlabel('x')
ylabel('y')
zlabel('t')
----------------------------------------------------------------------------------------

%%% *4. Make 1x2 subplot of the surface f(x,y) = sin(x) * cos(x) for -5 <= x <= 5. 
%%%     Use surf and contour functions.
x = -5:.2:5;
y = -5:.2:5;
[X,Y] = meshgrid(x,y);
Z = sin(X) .* cos(Y);
subplot(1,2,1)
surf(X,Y,Z)
title('Surface Plot using surf')
xlabel('x')
ylabel('y')
zlabel('z')
subplot(1,2,2)
contour(X,Y,Z)
title('Surface Plot using contour')
xlabel('x')
ylabel('y')
----------------------------------------------------------------------------------------

%%% *5a. Create an animation of a red cirrcle following a blue sin wave

%% Sin Wave Animation
clc
clear
close all

%% assign parameters
N = 1000;

%% assign x and y coordinates
x = linspace(0, 6*pi, N);
y = sin(x);

for i = 1:N
    
    % create figure
    clf
    hold on
    plot(x, y)
    plot(x(i), y(i), 'ro')
    grid on
    axis tight
    
    title(sprintf('Sin Wave at (%f, %f)', x(i), y(i)))
    xlabel('x')
    ylabel('sin(x)')
    
    drawnow
    
end  % end for i
----------------------------------------------------------------------------------------------

%%% *5b. Create an animation of a red cirrcle following a blue sin wave. Save in as an avifile.
%%%      (not suported now!!!)

%% Sin Wave Animation
clc
clear
close all

%% assign parameters
N = 1000;

%% assign x and y coordinates
x = linspace(0, 6*pi, N);
y = sin(x);

%% create avi file variable
aviobj = avifile('test');

for i = 1:N
    
    % create figure
    clf
    hold on
    plot(x, y)
    plot(x(i), y(i), 'ro')
    grid on
    axis tight
    
    title(sprintf('Sin Wave at (%f, %f)', x(i), y(i)))
    xlabel('x')
    ylabel('sin(x)')
    
    drawnow
    
    % get figure as frame
    F = getframe(gcf);
    
    % add frame to avi object
    aviobj = addframe(aviobj,F);
    
end  % end for i

close(aviobj)

-------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------

%%% 1. Generate a plot of cycloid for 0 <= phi <= 2*pi using 1000 increments and r = 3.
%%%    Give a plot title and labels. Turn the grid on and modify axis.
% author: Damian Ziolkowski
% date: 11/07/20
%% clean start
   clc, clear, close all
%% define data
   r = 3;
   phi = linspace(0, 2*pi, 1000);
   x = r .* (phi-sin(phi));
   y = r .* (1-cos(phi)); 
%% create plot
   plot(x,y)
   title('Plot of the cycloid')
   xlabel('X - axis')
   ylabel('Y - axis')
   grid on
   axis([-1, 20, -1, 7])
----------------------------------------------------------------------------------------------

%%% 2. Generate a 2x2 subplot of y(x) for 0 <= x <= 100 using plot, semilogx, semilogy, and loglog.
%%%    Use a fine enough discretization in x. Give each plot axis labels and title. Turn the grid on.
% author: Damian Ziolkowski
% date: 11/07/20
%% clean start
    clc, clear, close all
%% define data
    x = 0:.1:100;
    y = sqrt((100*((1-0.01*x.^2).^2)+0.02*x.^2)./(((1-x.^2).^2)+0.1*x.^2));
%% create subplot
    subplot(2,2,1)
    plot(x,y)
    title('Plot')
    xlabel('X - axis')
    ylabel('Y - axis')
    grid on
    subplot(2,2,2)
    semilogx(x,y)
    title('Semilogx')
    xlabel('X - axis')
    ylabel('Y - axis')
    grid on
    subplot(2,2,3)
    semilogy(x,y)
    title('Semilogy')
    xlabel('X - axis')
    ylabel('Y - axis')
    grid on
    subplot(2,2,4)
    loglog(x,y)
    title('Loglog')
    xlabel('X - axis')
    ylabel('Y - axis')
    grid on
----------------------------------------------------------------------------------------------

%%% 3. PLot y1(x) and y2(x) for 0 <= x <= 5 on a single axis. 
%%%    Give the plot axis labels, a title and a legend.
% author: Damian Ziółkowski
% date: 11/07/20
%% clean start
    clc, clear, close all
%% define data
    x = linspace(0, 5, 1000);
    y1 = 3+exp(-x).*sin(6*x);
    y2 = 4+exp(-x).*cos(6*x);
%% create plot
    hold on
    plot(x, y1)
    plot(x, y2)
    hold off
    grid on
    xlabel('X - axis')
    ylabel('Y - axis')
    title('Plots of y_1 and y_2')
    legend('y_1 = 3 + exp(-x)sin(6x)', 'y_2 = 4 + exp(-x)cos(6x)')
----------------------------------------------------------------------------------------------

%%% 4. Use the hist function to plot a histogram of the 1000 randomly generated numbers.
%%%    Distribute numbers into 10 bins. Create the bar graph.
% author: Damian Ziolkowski
% date: 12/07/20
%% clean start
    clc, clear, close all
%% define data 
    x = randn(1000,1);
    nbins = 10;
    [counts, centres] = hist(x);
    subplot(1,2,1)
    hist(x,nbins);
    subplot(1,2,2)
    bar(centres, counts)
----------------------------------------------------------------------------------------------

%%% 5. Generate a pie chart consising of the students' grades.
% author: Damian Ziolkowski
% date: 12/07/20
%% clean start
    clc, clear, close all
%% define data
    gradeDist = [42 85 67 20 5];
%% create a pie
    labels = {'A', 'B', 'C', 'D', 'F'};
    pie(gradeDist)
    title('All grades scored by students')
    legend(labels)
----------------------------------------------------------------------------------------------

%%% 6. Let -4 <= x <= 4, -3 <= y <= 3, and Z(x,y). Create vectors of x and y with 100 evenly spaced points.
%%%   Create meshgrids X and Y. Compute Z from X and Y. Create 2x2 subplot: to first row use surf and mesh,
%%%   and for second row use contour and contourf. Give titles, and axis labels.
% author: Damian Ziolkowski
% date: 12/07/20
%% clean start
    clc, clear, close all
%% define data
    x = linspace(-4,4,100);
    y = linspace(-3,3,100);
    [X, Y] = meshgrid(x, y);
    z = (X.*Y.*(X.^2-Y.^2))./(X.^2+Y.^2);
%% create plots
    subplot(2,2,1)
    surf(X,Y,z)
    xlabel('X-axis')
    ylabel('Y-axis')
    zlabel('Z-axis')
    title('SURF')
    subplot(2,2,2)
    mesh(X,Y,z)
    xlabel('X-axis')
    ylabel('Y-axis')
    zlabel('Z-axis')
    title('MESH')
    subplot(2,2,3)
    contour(X,Y,z)
    xlabel('X-axis')
    ylabel('Y-axis')
    zlabel('Z-axis')
    title('CONTOUR')
    subplot(2,2,4)
    contourf(X,Y,z)
    xlabel('X-axis')
    ylabel('Y-axis')
    zlabel('Z-axis')
    title('CONTOURF')
----------------------------------------------------------------------------------------------

%%% 7. Write a function that plots a regular polygon with n sides and radius 1. Axis must be equal from -1 to 1, axis labels, title.
function[] = myPolygon(n)
% [] = myPolygon(n)
% Plot a regular polygon with n sides and radius 1
% author: Damian Ziolkowski
% date: 14/07/20
%% define data
    numVertex = n;
    radius = 1;
    x = zeros(numVertex, 1);
    y = zeros(numVertex, 1);
    angles = 0:((2*pi)/numVertex):2*pi;
    for i = 1:numVertex
        y(i) = radius*cos(angles(i));
        x(i) = radius*sin(angles(i));
    end
%% create plot
    plot([x; x(1)], [y; y(1)], 'b+:')
    hold on 
    plot([-2 2], [0 0], 'k')
    plot([0 0], [-2 2], 'k')
    xlabel('X - axis')
    ylabel('Y - axis')
    title(sprintf('My Regular Polygone with %d sides', n))
    xlim([-1 1])
    ylim([-1 1])
    axis equal
    grid on
----------------------------------------------------------------------------------------------

%%% 8. Write a function, where f is a function handle and x is an array. 
function[] = myFunPlotter(f,x)
% [] = myFunPlotter(f,x)
% Plot a function handle
% author: Damian Ziolkowski
% date: 15/07/20
%% define data
    functionName = func2str(f);
    newFunctionName = erase(functionName,'@(x)');
%% create a plot    
    plot(x, f(x))
    xlabel('X - axis')
    ylabel('Y - axis')
    title(sprintf('Plot of %s', newFunctionName))
----------------------------------------------------------------------------------------------

%%% 9. Write a function that plots the set of polynomials.
function[] = myPolyPlotter(k,x)
% [] = myPolyPlotter(k,x)
% Plot the polynominal x^k. 
% author: Damian Ziolkowski
% date: 15/07/20
for i = 1:k    
    y = x.^i;
    hold on    
    plot(x,y)
    title(sprintf('Polynominals up to degree %d', k))
    xlabel('X - axis')
    ylabel('Y - axis')
    grid on
end
----------------------------------------------------------------------------------------------

%%% 12. Write a function where x and y are handles to the functions x(t) and y(t) 
function[] = myParametricPlotter(x,y,t)
% [] = myParametricPlotter(x,y,t)
% Plot parametric plot for the function handles x(t) anf y(t)
% author: Damian Ziolkowski
% date: 15/07/20
plot3(x(t),y(t),t)
xlabel('X - axis')
ylabel('Y - axis')
zlabel('Z - axis')
title('My Parametric Plot')
----------------------------------------------------------------------------------------------

%%% 13. Write a function where F is a handle to the function F(x,y). 
%%%     Produce surf graph for 'surf' or contour graph for 'contour'.
function[] = mySurfacePlotter(F,x,y,option)
% [] = mySurfacePlotter(F, x, y, option)
% Plot contour or surface for the function header
% author: Damian Ziolkowski
% date: 15/07/20
[X,Y] = meshgrid(x,y);
if option == 'plot1'
    surf(X,Y,F(X,Y))
    title('My Surface Plot')
elseif option  == 'plot2'
    contour(X,Y,F(X,Y))
    title('My Contour Plot')
else
    error('option variable must be ''plot1'' or ''plot2''.')
end

xlabel('X - axis')
ylabel('Y - axis')
zlabel('Z - axis')
