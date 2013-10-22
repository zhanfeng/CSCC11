% Use the function knnClassify to test performance on different datasets.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Performance Testing for Generic1
load '/Users/zhanfeng/Documents/MATLAB/a2/dataSets/generic1'
figure(1); clf; hold on;
% Construct the trainingInputs and trainingTargets parameters
trainingInputs = [c1_train c2_train];
trainingTargets = zeros(size(trainingInputs));
trainingTargets(1, 1:21) = ones(size(1, 21));
trainingTargets(2, 22:42) = ones(size(1, 21));
% Construct the testInputs and testTargets parameters
testInputs = [c1_test c2_test];
testTargets = zeros(size(testInputs));
testTargets(1, 1:size(c1_test, 2)) = ones(1, size(c1_test, 2));
testTargets(2, 70:138) = ones(1, size(c1_test, 2));

% Performance testing on various k values
for k = 3:2:21
    class = knnClassify(testInputs, k, trainingInputs, trainingTargets);
    performance = sum(all(class == testTargets)) / 138;
    plot(k, performance, 'ro');
end
title('Test Error as a Function of k for Generic1');
xlabel('k (nearest neighbours)');
ylabel('Correct Classification in Percentage');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Performance Testing for Generic2
load '/Users/zhanfeng/Documents/MATLAB/a2/dataSets/generic2'
figure(2); clf; hold on;
% Construct the trainingInputs and trainingTargets parameters
trainingInputs = [c1_train c2_train];
trainingTargets = zeros(size(trainingInputs));
trainingTargets(1, 1:21) = ones(size(1, 21));
trainingTargets(2, 22:42) = ones(size(1, 21));
% Construct the testInputs and testTargets parameters
testInputs = [c1_test c2_test];
testTargets = zeros(size(testInputs));
testTargets(1, 1:size(c1_test, 2)) = ones(1, size(c1_test, 2));
testTargets(2, 70:138) = ones(1, size(c1_test, 2));

% Performance testing on various k values
for k = 3:2:21
    class = knnClassify(testInputs, k, trainingInputs, trainingTargets);
    performance = sum(all(class == testTargets)) / 138;
    plot(k, performance, 'ro');
end
title('Test Error as a Function of k for Generic2');
xlabel('k (nearest neighbours)');
ylabel('Correct Classification in Percentage');

