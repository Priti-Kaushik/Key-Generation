tic
% @Node Pi
load('String_Pi.mat');
load('String_Pj.mat');
load('concatenated12bit_Pj.mat');
load('FV_Pj.mat');
concatenated12bit_Pj
for n = 1:30
    hash1_Pj(n,:) = HMAC(FV_Pj(n,:),String_Pi,'SHA-1'); % HMAC_String_Pi
    hash2_Pj(n,:) = HMAC(FV_Pj(n,:),String_Pj,'SHA-1'); % HMAC_String_Pj
end
HMAC_onPi_atPj = hexToBinaryVector(hash1_Pj);
Table_Pj = table(concatenated12bit_Pj, HMAC_onPi_atPj)
HMAC_onPj_atPj = hexToBinaryVector(hash2_Pj);
save('HMAC_onPj_atPj.mat','HMAC_onPj_atPj');
save('HMAC_onPi_atPj.mat','HMAC_onPi_atPj');
toc