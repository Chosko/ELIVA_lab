% function X = immulnoisegauss(X)
%   Moltiplica rumore gaussiano a un'immagine
function Y = immulnoisegauss(X)
    Y = uint8(double(X) .* abs(randn(256,256)./4));
end