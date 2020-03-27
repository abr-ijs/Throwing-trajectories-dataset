function [x] = kinematics(q, base, l)
% KIMODJAC claculates the position and Jacobian of a planar manipulator
% with 3 DOFs
%
% INPUT PARAMETERS
%   q: the joints
%   base: base position
%   l: the links
%
% OUTPUT PARAMETERS
%   x: joint positions
%

angle = 0;
x = zeros(2,size(q,2)+1);
x(:,1) = base;

for i = 1:size(q,2)
  
    
  angle = angle + q(i);
  x(1,i+1) = x(1,i) + l(i)*cos(angle);
  x(2,i+1) = x(2,i) + l(i)*sin(angle);
end
