%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Bonus Question

figure(1); clf; hold on;
for M = [3, 10, 50, 100]
    switch_wins = 0;
    for j = 1:1000
        if GAMESHOW(M) == 1
            switch_wins = switch_wins + 1;
        end
    end
    plot(M, switch_wins / 1000, 'ro')
end
title('Winning Percentage of Switching Door as a Function of M doors');
xlabel('M (doors)');
ylabel('Winning Percentage of Switching Door');

% The general formula for the probability of switching and winning is
% (M-1)/M, where M is the number of doors.