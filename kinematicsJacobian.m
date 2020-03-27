function [x, Jac] = kinematicsJacobian(q, base, l)
% KIMODJAC calculates the end-effector position and the Jacobian of a
% planar manipulator with 2 DOFs
%
% INPUT PARAMETERS
%   q: the joints
%   base: base position
%   l: the links

n = size(q,1) * size(q,2);
Jac = zeros(2,n);
x = [base(1); base(2)];
angle = 0;
for i = 1:n
  angle = angle + q(i);
  s = sin(angle); c = cos(angle);
  x = x + [c * l(i); s * l(i)];
  Jac(:,1:i) = Jac(:,1:i) + repmat([-l(i) * s; l(i) * c], 1, i);
end
