% function Y = iminverse(X)
%   ritorna un'immagine che ha i valori di intensità dei pixel reciproci
%   dell'originale (la riscala da 0 a 255)
function Y = iminverse(X)
    Y = uint8(1./double(X) * 255.0);
end