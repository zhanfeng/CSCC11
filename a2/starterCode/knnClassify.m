function class = knnClassify(test, k, trainingInputs, trainingTargets)
%
% Inputs:
%   test: test input vector
%   k: number of nearest neighbours to use in classification.
%   traingingInputs: array of training exemplars, one exemplar per row
%   traingingTargets: idenicator vector per row
%
% Basic Algorithm of kNN Classification
% 1) find distance from test input to each training exemplar,
% 2) sort distances
% 3) take smallest k distances, and use the median class among 
%    those exemplars to label the test input.
%


class = zeros(size(trainingTargets, 1), size(test, 2));
diff = zeros(size(trainingInputs));

for i = 1:size(test, 2)
    % calculate the difference between each test vector and the training
    % exemplars
    for j = 1:size(trainingTargets, 1)
        diff(j,:) = trainingInputs(j,:) - test(j,i);
    end

    % square the differences
    diff = diff .^ 2;

    % calculate the euclidean distances
    distances = sqrt(diff(1,:) + diff(2,:));

    % sort the distances in non-decreasing order
    [~, sorted_indices] = sort(distances);
    sorted_Targets = trainingTargets(:, sorted_indices);

    % get the median class
    class(:, i) = median(sorted_Targets(:, k), 2);
end

end

