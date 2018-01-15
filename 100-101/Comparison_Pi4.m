clc
load('HMAC_onPj_atPi.mat');
load('HMAC_onPj_atPj.mat');
load('concatenated12bit_Pi.mat');
C = false(30,160);
Com = false(30,160);
CwithPi = false(30,12);
Key_Pi = false(30,12);
For_zero = false(1,160); 
Another_zero = false(1,12);
concatenated12bit_Pi = concatenated12bit_Pi== '1';

Threshold = 0;
for i = 1:30
    for j = 1:30
     if HMAC_onPj_atPi(i,:) == HMAC_onPj_atPj(j,:)
         Threshold = Threshold+1 ;
         Key_Pi(i,:) = concatenated12bit_Pi(i,:);
               
     end    
    end    
end
save('Threshold.mat','Threshold');
save('Key_Pi.mat','Key_Pi'); 