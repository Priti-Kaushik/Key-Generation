tic
load('FourBit_Pi.mat');
concatenated12bit_Pi =[];
for n = 1:90
    if mod(n,3) == 0
       concatenated12bit_Pi = [concatenated12bit_Pi;FourBit_Pi((n-2),:) FourBit_Pi((n-1),:) FourBit_Pi(n,:)];
    end
end
for i = 1:30
    H_Pi(i,:) = DataHash(concatenated12bit_Pi(i,:), Opt);
end 
Binary_FV_Pi = hexToBinaryVector(H_Pi,160);
FV_Pi = Binary_FV_Pi(:,1:80);
FV_Pi
save('FV_Pi.mat', 'FV_Pi');
save('concatenated12bit_Pi.mat','concatenated12bit_Pi'); 
toc