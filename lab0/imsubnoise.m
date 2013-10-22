% function Y = imsubnoise(X)
%   Sottrae rumore bianco a un'immagine
function Y = imsubnoise(X)
    Y = X - uint8(ceil(rand(512,512).*255));
end