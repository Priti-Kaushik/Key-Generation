tic
% At node Pi 
PatientData_Pi = dlmread('rec_Pi.txt','%f32');
Opt = struct('Method', 'SHA-1', 'Input', 'bin');
% converting float data into 4-bit binary and storing in FourBit_Pi.mat
%Binary_Pi = false(90,64);
for n = 1:90
    Binary_Pi(n,:) = float2bin(PatientData_Pi(n));
end
FourBit_Pi = Binary_Pi(:,61:64);
% EightBit_Pi = Binary_Pi(:,57:64);
% save('EightBit_Pi.mat','EightBit_Pi');
save('FourBit_Pi.mat','FourBit_Pi');
% String Pi generation 
Random_Pi = rand;
Random_hash_Pi = DataHash(Random_Pi, Opt);
String_Pi = hexToBinaryVector(Random_hash_Pi,160);
String_Pi
save('String_Pi.mat','String_Pi');
toc
