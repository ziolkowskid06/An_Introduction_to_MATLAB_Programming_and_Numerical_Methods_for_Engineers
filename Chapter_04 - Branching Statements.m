%% *1. Write a function to print status depending on temperature.
function [status] = myThermoStat(temp, desiredTemp)
% [status] = myThermoStat(temp, desiredTemp)
% Change status of thermostat based on temperature and desired temperature.
% author
% date
if temp < desiredTemp - 5
    status = 'Heat';
elseif temp > desiredTemp + 5
    status = 'AC';
else
    status = 'off';
end
end % end myThermoStat
-------------------------------------
myThermoStat(65, 75)    % ans: Heat
myThermoStat(75, 65)    % ans: AC
myThermoStat(65, 63)    % ans: off

%% *2. Nested branching example.
function [out] = myNestedBranching(x, y)
% [out] = myNestedBranching(x, y)
% Nested Branching Nested Example
% author
% date
if x > 2
    if y < 2
        out = x + y;
    else
        out = x - y;
    end
else
    if y > 2;
        out = x*y;
    else
        out = 0;
    end
end
end % end myNestedBranching

%% *3. Write myAdder2 to sum three inputs. Print error if the user does not input doubles.
function [out] = myAdder2(a, b, c)
% [out] = myAdder2(a, b, c)
% out is the sum of a, b, and c
% author
% date
% check for erroneus input
if ~isa(a, 'double') || ~isa(b, 'double') || ~isa(c, 'double')
    error('Inputs a, b, and c must be doubles.')
end
out = a + b + c;
end  % end myAdder2

%% *4. Write a function, that takes a double r, and a string calc as input arguments.
function [out] = myCircCalc(r, calc)
% [out] = myCircCalc(r, calc)
% returns out = pi*r^2 if calc is 'are' and out = 2*pi*r if calc
% is 'circumference'
% author
% date
if strcmp(calc,'area')
    out = pi*r.^2;
elseif strcmp(calc, 'circumference')
    out = 2*pi*r;
end
end   % end myCircCalc    
------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------

%% 1. Write a function to calculate a tip according to the number of people taking part in the party.
function [tip] = myTipCalc(bill, party)
% [tip] = myTipCalc(bill, party)
% Calculate the tip with respect to the number of people in the party.
% author: Damian Ziolkowski
% date: 25/05/20
if (party <= 0 || bill <= 0)                  % Check if possitive number
    error('Numbers must be possitive')
elseif (party > 0 && party < 6)               %  tip is 15%, if less than 6 people
    tip = .15 * bill;
elseif (party >= 6 && party < 8)              %  tip is 18%, if less than 8 people
    tip = .18 * bill;
elseif (party >= 8 && party < 11)             %  tip is 20%, if less than 11 people
    tip = .20 * bill;
else                                          %  tip is 25%, otherwise
    tip = .25 * bill;
end

end % end myTipCalc
--------------------------------------
myTipCalc(109.29, -1)        % ans: 'Numbers must be possitive'
myTipCalc(109.29, 3)         % ans: 16.3935
myTipCalc(109.29, 9)         % ans: 21.8580
myTipCalc(109.29, 12)        % ans: 27.3225

%% 2. Write a function, where 'plus', 'minus', 'mult', 'div', adds, substracts, multiplies or divides to numbers respectively.  
function [f] = myMultOperation(a, b, operation)
% [f] = myMultiOperation(a, b, operation)
% Make mathematical operation for two variables. Choose operation.
% author: Damian Ziolkowski
% date: 25/06/20
if strcmp(operation, 'plus')       % Detect addition
    f = a + b;
elseif strcmp(operation, 'minus')  % Detect substraction
    f = a - b;
elseif strcmp(operation, 'mult')   % Detect multiplication
    f = a .* b;
elseif strcmp(operation, 'div')    % Detect division
    f = a ./ b;
else
    error('The ''operation'' must include ''plus'', ''minus'', ''mult'', or ''div''.')
end

end % end myMultOperation
-----------------------------------------
x = [1 2 3 4]; y = [2 3 4 5];
myMultOperation(x, y, 'plus')        % ans: [3 5 7 9]
myMultOperation(x, y, 'minus')       % ans: [-1 -1 -1 -1]
myMultOperation(x, y, 'mult')        % ans: [2 6 12 20]
myMultOperation(x, y, 'div')         % ans: [0.5000 0.6667 0.7500 0.8000]
myMultOperation(x, y, 'dog')         % ans: The 'operation' must include 'plus', 'minus', 'mult', or 'div'.

%% 4. Write a function, to print first 10 elements of array (add zeros if is less than 10 elements).
function [out] = myMakeSize10(x)
% [out] = myMakeSize10(x)
% Print array with first 10 elements, if less than 10 pad with enough zeros.
% author: Damian Ziolkowski
% date: 26/05/20
if length(x) >= 10
    out = x(1:10);  
else length(x) < 10 
    b = zeros(1, (10-length(x)));
    out = ([x b]);
end
end % end myMakeSize10
-----------------------------------------
myMakeSize10([2 4 5])   % ans: [2 4 5 0 0 0 0 0 0 0]

%% 6. Wrtie a function to print grade related to the score.
function [grade] = myLetterGrade(percent)
% [grade] = myLetterGrade(percent)
% Print the grade according to percent.
% author: Damian Ziolkowski
% date: 26/05/20
if percent <= 100 && percent > 90            % Grade class: A
    if percent > 97
        grade = 'A+';
    elseif percent <= 97 && percent > 93
        grade = 'A';
    else
        grade = 'A-';
    end    
elseif  percent <= 90 && percent > 80        % Grade class: B
    if percent > 87
        grade = 'B+';
    elseif percent <= 87 && percent > 83
        grade = 'B';
    else
        grade = 'B-';
    end          
elseif percent <= 80 && percent > 70         % Grade class: C
    if percent > 77
        grade = 'C+';
    elseif percent <= 77 && percent > 73
        grade = 'C';
    else
        grade = 'C-';
    end      
elseif percent <= 70 && percent > 60         % Grade class: D
    if percent > 67
        grade = 'D+';
    elseif percent <= 67 && percent > 63 
        grade = 'D';
    else
        grade = 'D-';
    end
elseif percent <=60 && percent > 0           % Grade class: F
    grade = 'F';
else
    error('Insert a number between 1 and 100')
end
end % end myLetterGrade

%% 7. Write a function to inform, when two inputs are higher then 10 compare to third one.
function [response] = myNukeAlarm(S1, S2, S3)
% [response] = myNukeAlarm(S1, S2, S3)
% Alarm if any two inputs are higher than 10 compare to third one
% author: Damian Ziolkowski
% date: 26/05/20
if (S2>S1+10 && S3>S1+10) || (S1>S2+10 && S3>S2+10) || (S1>S3+10 && S2>S3+10)
    response = 'alarm';
else
    response = 'normal';
end
end % end myNukeAlarm
----------------------------------------
myNukeAlarm(20,17,5)      % ans: alarm
myNukeAlarm(10,11,12)     % ans: normal

%% 8. Write a function to calculate the roots of quadratic equation.
function [nRoots, r] = myNRoots(a, b, c)
% [nRoots, r] = myNRoots(a, b, c)
% Calculate the roots of quadratic equation.
% nRoots is number of roots: 1, 2 or -2 (imaginary)
% r array containing roots
% author: Damian Ziolkowski
% date: 26/05/20
if (b^2 > 4*a*c)
    nRoots = 2;
    r = [(-b+sqrt(b^2-4*a*c))/(2*a), (-b-sqrt(b^2-4*a*c))/(2*a)]; 
   
elseif (b^2 < 4*a*c)
    nRoots = -2;
    r = [(-b+sqrt(b^2-4*a*c))/(2*a), (-b-sqrt(b^2-4*a*c))/(2*a)];     
else
    nRoots = 1;
    r = -b/(2*a);     
end
end % end myNRoots
-----------------------------------------
[nRoots, r] = myNRoots(1, 0, -9)    % ans: nRoots: 2, r = [3, -3]
[nRoots, r] = myNRoots(3, 4,  5)    % ans: nRoots: -2, r = [-0.6667 + 1.1055i, -0.6667 - 1.1055i]
[nRoots, r] = myNRoots(2, 4,  2)    % ans: nRoots: 1, r = -1

%% 9. Write a function to calculate handles to functions.
function [h] = mySplitFunction(f, g, a, b, x)
% [h] = mySplitFunction(f, g, a, b, x)
% Calculate handles to function f(x) or g(x)
% Assume b > a
% author: Damian Ziolkowski
% date: 25/06/20
if (x <= a)
    h = f(x);
elseif (x >= b)
    h = g(x);
else
    h = 0;
end
end % end mySplitFunction
-----------------------------------------
mySplitFunction(@exp, @sin, 2, 4, 1)       % ans: 2.7183
mySplitFunction(@exp, @sin, 2, 4, 3)       % ans: 0
mySplitFunction(@exp, @sin, 2, 4, 5)       % ans: -0.9589
