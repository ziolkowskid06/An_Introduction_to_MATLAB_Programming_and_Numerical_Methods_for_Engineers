%% *1. Compute the angle between the vectors v and w.
v = [10, 9, 3];
w = [2, 5, 12];
theta = acos(v*w'/(norm(v)*norm(w)))

%% *2. Compute cross product of v and w.
v = [0 2 0];
w = [3 0 0];
u = cross(v, w)

%% *3. Find determinant of the matrix M and produce 4x4 identity matrix.
M = [0 2 1 3, 3 2 8 1, 1 0 0 3, 0 3 2 1];
det(M)
I = eye(4);
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

%%2. Write a function where v1 and v2 are the column vectors of the same size and tol is a scalar larger than 0.
     The output should be 1 if the angle between vecotrs is within tol, that is |pi/2-alfa|<tol, otherwise 0.
function [out] = myIsOrthogonal(v1,v2,tol)   
% [out] = myIsOrthogonal(v1,v2,tol)
% Check if the angle is within tol. v1 and v2 must be column vectors.
% author: Damian Ziolkowski
% date: 29/07/20
if (size(v1, 2) ~= 1 || size(v2, 2) ~= 1)
   error('Use column vectors')
else
   alfa = acos(v1'*v2/(norm(v1')*norm(v2')));
   if abs((pi/2)-alfa)<tol
      out = 1;
   else
      out = 0;
   end
end
end % end of function
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

%% 4. Write a function, where A and B are matrices. Let rank(A)=n.
      Then B should be a matrix containing the first n columns of A that are all linearly independent. Note that this implies tht B is full rank.
function [B] = myMakeLinInd(A)   
% [B] = myMakeLinInd(A)  
% B cointains n columns of A,that are linearly independent. 
% author: Damian Ziolkowski
% date: 29/07/20
n = rank(A);
B = A(:,1);
k = 2;
for i = 2:size(A,2)
     C = A(:,1:i);
     if size(B,2) == n
         break
     elseif rank(C) > size(B,2)
         B(:,k) = C(:,i);
         k = k+1;
     else
         continue     
     end
end
end % end of function   
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
