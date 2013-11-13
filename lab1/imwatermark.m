% function Y = imwatermark(X,steg)
%   Inserisce
function Y = imwatermark(X,steg)
    steg = uint8(steg > 128);
    disp = uint8(mod(X,2));
    Y = X + uint8(xor(disp,steg));
end