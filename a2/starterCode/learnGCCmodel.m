function [p1, m1, m2, C1, C2] = learnGCCmodel(x1, x2)
% 
% Inputs
%   x1 - training exemplars from class 1, one exemplar per row
%   x2 - training exemplars from class 2, one exemplar per row
%
% Outputs
%   p1 - prior probability for class 1
%   m1 - mean of Gaussian measurement likelihood for class 1
%   m2 - mean of Gaussian measurement likelihood for class 2
%   C1 - covariance of Gaussian measurement likelihood for class 1
%   C2 - covariance of Gaussian measurement likelihood for class 2
%

% n is the total number of exemplars
n = size(x1, 2) + size(x2, 2);

p1 = size(x1, 2) / n;
m1 = sum(x1, 2) / n; 
m2 = sum(x2, 2) / n;

% Calculate the covariance for class 1
C1 = 0;
for i = 1:size(x1, 2)
   difference = x1(:,i) - m1;
   C1 = C1 + difference * difference';
end
C1 = C1 / (n-1);

% Calculate the covariance for class 2
C2 = 0;
for i = 1:size(x2, 2)
   difference = x2(:,i) - m2;
   C2 = C2 + difference * difference';
end
C2 = C2 / (n-1);

end

