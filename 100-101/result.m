clc
load('Key_Pi.mat');
load('Key_Pj.mat');
load('Threshold.mat');
Threshold
if Threshold > 4
if Key_Pi == Key_Pj
   disp('Sucessfully key generated')
else
    disp('Start SGenP again')
end   
end