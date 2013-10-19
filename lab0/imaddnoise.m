% function X = imaddnoise()
%   Aggiunge rumore bianco a un'immagine
function Y = imaddnoise(X)
    Y = X + uint8(ceil(rand(512,512).*255));
end