% function X = immulnoise()
%   Aggiunge rumore bianco a un'immagine
function Y = immulnoise(X)
    Y = uint8(double(X) .* rand(512,512));
end