%% 6. Given a, b, n, write a statement in terms of a, b and n using the colon operator that produces the same array as linsapce(a,b,n).
a = 0;
b = 20;
n  = 21;
increment = 1;
linspace(a,b,n)
colon = a:increment:b
colon == linspace(a,b,n)  % Check if the same

%% 7. Create the following matrix M = [0 0 0 0 1; 0 0 0 0 1; 1 2 3 4 5 1; 0 2 4 6 8 1; 8 7 2 5 9 1]. As few numbers as possible.
M = zeros(5, 6);
M(:,   6) = 1;
M(3, 1:5) = 1:5;
M(4, 1:5) = 0:2:8;
M(5, 1:5) = [8 7 2 5 9];
M

%% 8. For previous matrix compoute the sum of each row and each column.
sum(M, 2)   & Sum of each row (horizontal addition)
sum(M, 1)   % Sum of each column (vertical addition)

%% 9. Create uniformly distributed array of 1000 numbers between 0 and 1. Verify that it is close to 0.5.
a = 0;
b = 1;
r = a + (b-a) .* rand(1000, 1);    % Creates 1000 rows
mean(r)

%% 10. Assign the string '123' to S. Change to double and assign to N. Verify that S is a char and N is a double.
S = '123';
N = str2num(S);
class(S)
class(N)

%% 11. Assign 'HELLO' to s1 and 'hello' to s2. Prove that s1 and s2 are not equal, and they are equal if both are uppercase/lowercase.
s1 = 'HELLO';
s2 = 'hello';
strcmp(s1,s2)
strcmp(s1,upper(s2))
strcmp(lower(s1),s2)

%% 12. Generate following string:
        - The word 'Enginerring' has 11 letters.
        - The word 'Book' has 4 letters.
        - The word 'MATLAB' has 6 letters.
 
 sprintf('The word ''%s'' has 11 letters.', 'Engineering')
 sprintf('The word ''%s'' has 4 letters.', 'Book')
 sprintf('The word ''%s'' has 6 letters.', 'MATLAB')
 
%% 13. Let x = 0:10 and y = 10:-1:0. Change y to show both variables are equal.
x = 0:10;
y = 10:-1:0;
all(x == fliplr(y))      % Tests whether all the elements along various dimensions of an array are nonzero or logical 1 (true).
isequal(x, fliplr(y))    % Alternative solution

%% 15. ERRORs generation:
x + 90            % ??? Undefined function or variable 'x'.
-----------------------------------------------------
8 = y             % ??? The expression to the left of the equals sign is not a valid target for an assignment.
-----------------------------------------------------
x = [1 2]]        % ??? Unbalanced or unexpected parenthesis or bracket.
-----------------------------------------------------
A = [1 2; 3 4];
A(-1)             % ??? Subscript indices must either be real positive integers or logicals.
-----------------------------------------------------
z = [1 2 3];
s = [4 5];
t = [6; 7];
vertcat(z,s)      % ??? Dimensions of matrices being concatenated are not consistent.
horzcat(z,t)      % ??? Dimensions of matrices being concatenated are not consistent.
-----------------------------------------------------
L = [1 2 3];
M = [4 5 6];
K = [7 8 9];
K(1) = M + L      % ??? In an assignment  A(:) = B, the number of elements in A and B must be the same. 
                    (occurs when scalar is on the left and vector is on the right)
-----------------------------------------------------

%% 18. Create struct array called Class with field values:title,semsester, and enrollment. Create 3 courses.
Class(1).title = 'Fluid Mechanics and CFD';
Class(1).semester = 'Spring 2018';
Class(1).enrollment = 390;
Class(2).title = 'Heat Transfer';
Class(2).semester = 'Winter 2018';
Class(2).enrollment = 240;
Class(3).title = 'Advanced Materials';
Class(3).semester = 'Spring 2019';
Class(3).enrollment = 150;

%% 19. Create a cell similar to previous structure (element/row).
Class{1, 1} = 'Fluid Mechanics and CFD';
Class{1, 2} = 'Spring 2018';
Class{1, 3} = 390;
Class{2, 1} = 'Heat Transfer';
Class{2, 2} = 'Winter 2018';
Class{2, 3} = 240;
Class{3, 1} = 'Advanced Materials';
Class{3, 2} = 'Spring 2019';
Class{3, 3} = 150;

%% 20. Assign the string 'Hello World' to the variable S.
S = 'Hello World'

%% 22. Return the size of array S.
f = size(S)

%% 23. Return the length of an array S.
g = length(S)

%% 26. Create a 1x3 cell array.
b = cell(1, 3)

%% 27. Create a 2x2 cell array containing 'dog', 'cat', 10, [23 5 4 93].
v = {'dog', 'cat'; 10, [23 5 4 93]}

%% 28. Assign pi/4 to the variable x.
x = pi/4

%% 29. Assign 1x100 array of zeros to the variable z.
z = zeros(1,100)

%% 30. Assign the array A = [1 3 5 ... 19 21].
A = (1:2:21)

%% 31. Display rhre third, fourth, and the seventh element of A.
A([3 4 7])

%% 32. Assign an array starting at 17, and ending at 23 and cotaining 101 elements.
M = linspace(17, 23, 100)

%% 33. Give las element of M
M(end)

%% 36. Clear variables and clear the screen
clear;
clc;






