tic
% @Node Pi
load('String_Pi.mat');
load('String_Pj.mat');
load('FV_Pi.mat');
%hash1_Pi = zeros(30,1,'int8');
for n = 1:30
    hash1_Pi(n,:) = HMAC(FV_Pi(n,:),String_Pi,'SHA-1'); % HMAC_String_Pi
    
    hash2_Pi(n,:) = HMAC(FV_Pi(n,:),String_Pj,'SHA-1'); % HMAC_String_Pj
end
%Table_Pi = table(FV_Pi, hash1_Pi)
HMAC_onPi_atPi = hexToBinaryVector(hash1_Pi);
HMAC_onPj_atPi = hexToBinaryVector(hash2_Pi);
HMAC_onPj_atPi(2,:)
save('HMAC_onPj_atPi.mat','HMAC_onPj_atPi');
save('HMAC_onPi_atPi.mat','HMAC_onPi_atPi');
toc