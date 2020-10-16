%% 8. Compute the area of a triangle with base 10 and height 12.
base = 10;
height = 12; 
area = 0.5*base*height

%% 9. Compute the surface area and volume of the cylinder with radius 5 and height 3.
radius = 5;
height = 3;
volume = pi*(r^2)*height
surface = 2*pi*r*height + 2*pi*(r^2)

%% 10. Compute the slope between the points (3, 4) and (5, 9).
slope = (180/pi)*atan((9-4)/(5-3))

%% 11. Compute distance between the points (3, 4) and (5, 9).
distance = sqrt((5-3)^2 + (9-4)^2)

%% 12. Compute 6!
factorial(6)

%% 13. Compute number of leap years between the years 1500 and 2010.
floor((2010-1500-1)/4)

%% 14. Use Ramanujan's formula to approximate pi.
format long
i = 0;  % any number
pi_numb = 1/(((2*sqrt(2))/9801) * (factorial(4*i)/(factorial(i)^4))*((1103+26390*i)/396^(4*i)))

%% 15. Compute sinh for x = 2 using exponentials. Verify using buil-in function sinh.
x = 2
result  = ( exp(x) - exp(-x) ) / 2;
result == sinh(x)   % if 1 "true"

%% 16. Verify that (sin(x))^2+(cos(x))^2=1.
format long
x = pi;
(sin(x))^2 + (cos(x))^2 == 1
x = pi/2;
(sin(x))^2 + (cos(x))^2 == 1
x = pi/4;
(sin(x))^2 + (cos(x))^2 == 1
x = pi/6;
(sin(x))^2 + (cos(x))^2 == 1

%% 17. Use sind to compute the sin(87deg).
sind(87)












