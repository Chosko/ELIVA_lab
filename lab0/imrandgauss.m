% function X = imrandgauss()
%   Genera un immagine in scala di grigi contenente rumore gaussi-ANO
function X = imrandgauss()
    X = uint8(ceil(abs(randn(512,512).*(255/4))));
end