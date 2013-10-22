% Use the function learnGCCmodel to learn a Gaussian Class-Conditional
% model for classification.
% Use the function gccClassify for evaluating the decision function
% to perform classification.
% Then test the model under various conditions.

%% Generic1
load '/Users/zhanfeng/Documents/MATLAB/a2/dataSets/generic1'
[p1,m1,m2,C1,C2] = learnGCCmodel(c1_train, c2_train);

corrects = 0;
for i = 1:size(c1_test, 2)
    if all(gccClassify(c1_test(:,i),p1,m1,m2,C1,C2)==[1; 0])==1
        corrects = corrects + 1;
    end
end

for i = 1:size(c2_test, 2)
    if all(gccClassify(c2_test(:,i),p1,m1,m2,C1,C2)==[0; 1])==1
        corrects = corrects + 1;
    end
end

performance = corrects / (size(c1_test, 2) + size(c2_test, 2));

%% Generic2
load '/Users/zhanfeng/Documents/MATLAB/a2/dataSets/generic2'
[p1,m1,m2,C1,C2] = learnGCCmodel(c1_train, c2_train);

corrects = 0;
for i = 1:size(c1_test, 2)
    if all(gccClassify(c1_test(:,i),p1,m1,m2,C1,C2)==[1; 0])==1
        corrects = corrects + 1;
    end
end

for i = 1:size(c2_test, 2)
    if all(gccClassify(c2_test(:,i),p1,m1,m2,C1,C2)==[0; 1])==1
        corrects = corrects + 1;
    end
end

performance = corrects / (size(c1_test, 2) + size(c2_test, 2));
