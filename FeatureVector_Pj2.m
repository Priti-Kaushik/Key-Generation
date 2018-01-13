tic
load('FourBit_Pj.mat');
concatenated12bit_Pj =[];
for n = 1:90
    if mod(n,3) == 0
       concatenated12bit_Pj = [concatenated12bit_Pj;FourBit_Pj((n-2),:) FourBit_Pj((n-1),:) FourBit_Pj(n,:)];
    end
end
for i = 1:30
    H_Pj(i,:) = DataHash(concatenated12bit_Pj(i,:), Opt);
end 
Binary_FV_Pj = hexToBinaryVector(H_Pj,160);
FV_Pj = Binary_FV_Pj (:,1:20);
save('FV_Pj.mat', 'FV_Pj');
save('concatenated12bit_Pj.mat','concatenated12bit_Pj'); 
toc