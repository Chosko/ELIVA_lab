% function X = imrand()
%   Genera un immagine in scala di grigi contenente rumore bianco
function X = imrand()
    X = uint8(ceil(rand(512,512).*255));
end