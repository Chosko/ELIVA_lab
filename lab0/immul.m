% function Z = immul(X,Y)
%   moltiplica l'immagine X per l'immagine Y
function Z = immul(X,Y)
    Z = uint8(((double(X)./255) .* (double(Y)./255)) * 255);
end