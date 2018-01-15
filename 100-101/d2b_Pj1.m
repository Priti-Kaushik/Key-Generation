tic
% @ Node Pj
PatientData_Pj = dlmread('rec_Pj.txt','%f32');
Opt = struct('Method', 'SHA-1', 'Input', 'bin');
% converting float data into 4-bit binary and storing in FourBit_Pj.mat
for n = 1:90
    Binary_Pj(n,:) = float2bin(PatientData_Pj(n));
end
FourBit_Pj = Binary_Pj(:,61:64);
% EightBit_Pj = Binary_Pj(:,57:64);
% save('EightBit_Pj.mat','EightBit_Pj');
save('FourBit_Pj.mat','FourBit_Pj');
% String Pj generation
Random_Pj = rand;
Random_hash_Pj = DataHash(Random_Pj, Opt);
String_Pj = hexToBinaryVector(Random_hash_Pj,160);
String_Pj
save('String_Pj.mat','String_Pj');
toc