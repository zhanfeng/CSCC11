function [ win ] = GAMESHOW(M)
% 
% Inputs:
%  M: the number of doors
%
% Basic Algorithm of GAMESHOW
% 1) Randomly pick a door to have the prize in it
% 2) Randomly pick a door for the player
% 3) If the player picks the prize door, return 0 because the player
%    doesn't need to switch and wins. Otherwise, return 1 for switching
%    and gets the prize.

prize_door = randi(M);
player_door = randi(M);

if prize_door == player_door
    win = 0;
else
    win = 1;
end

end

