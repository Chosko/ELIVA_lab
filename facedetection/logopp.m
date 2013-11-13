% function [I,Rg,By] = logopp(X)
%   transform the input (color) image into log-opponent values
function [I,Rg,By] = logopp(X)
    X = double(X);
    LR = 105.*log10(X(:,:,1)+1);
    LG = 105.*log10(X(:,:,2)+1);
    LB = 105.*log10(X(:,:,3)+1);
    I = (LR + LG + LB)/3;
    Rg = LR - LG;
    By = LB - (LG + LR)/2;
end