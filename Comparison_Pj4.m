clc
load('HMAC_onPi_atPi.mat');
load('HMAC_onPi_atPj.mat');
load('concatenated12bit_Pj.mat');
concatenated12bit_Pj = concatenated12bit_Pj== '1';
Key_Pj = false(30,12);
Another_zero_Pj = false(1,12);
for i = 1:30
    for j = 1:30
     if HMAC_onPi_atPi(i,:) == HMAC_onPi_atPj(j,:)
         Key_Pj(i,:) = concatenated12bit_Pj(j,:);
                  
%      else
%          Key_Pj(i,:) = Another_zero;
     end    
    end    
end
%Key_Pj = Key_Pj(randperm(end));
save('Key_Pj.mat','Key_Pj');