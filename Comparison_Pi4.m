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

for i = 1:30
    for j = 1:30
     if HMAC_onPj_atPi(i,:) == HMAC_onPj_atPj(j,:)
         HMAC_onPj_atPj(j,:)
         C(i,:) = HMAC_onPj_atPj(j,:);
     end    
    end    
end 

for i = 1:30
    for j = 1:30
     if HMAC_onPj_atPj(i,:) == HMAC_onPj_atPi(j,:)
         Com(i,:) = HMAC_onPj_atPi(j,:);
     end    
    end    
end    

for i = 1:30
   if C(i,:) == For_zero
      CwithPi(i,:) = Another_zero;
   else    
       CwithPi(i,:) = concatenated12bit_Pi(i,:);
   end    
end   

for i = 1:30
    for j = 1:30
     if C(i,:) == Com(j,:)
         Key_Pi(i,:) = CwithPi(i,:);
         
     end    
    end    
end 
%Key_Pi = Key_Pi(randperm(end));
save('Key_Pi.mat','Key_Pi'); 