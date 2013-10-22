% function Y = imfliph(X)
%   ribalta un'immagine orizzontalmente
function Y = imfliph(X)
    Y = uint8(double(X) * rot90(eye(size(X,1))));
end