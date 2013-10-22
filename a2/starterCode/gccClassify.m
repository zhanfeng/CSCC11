
function class = gccClassify(x, p1, m1, m2, C1, C2)
% 
% Inputs
%   x - test examplar
%   p1 - prior probability for class 1
%   m1 - mean of Gaussian measurement likelihood for class 1
%   m2 - mean of Gaussian measurement likelihood for class 2
%   C1 - covariance of Gaussian measurement likelihood for class 1
%   C2 - covariance of Gaussian measurement likelihood for class 2
%
% Outputs
%   class - sgn(a(x)) (ie sign of decision function a(x))

% D: vector x's dimension
D = size(x,1);
p2 = 1 - p1;

a0 = -p1*(x-m1)'*(C1^-1)*(x-m1)-p1*log(det(C1))-D*log(2*pi)/2;
a1 = p2*(x-m2)'*(C2^-1)*(x-m2)+p2*log(det(C2))+D*log(2*pi)/2;
a = a0 + a1;

if a > 0
    class = [1 0]'; 
elseif a < 0
    class = [0 1]';
else
    class = [0 0]';
end

end
