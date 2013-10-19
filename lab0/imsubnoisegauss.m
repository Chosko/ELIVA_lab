% function Y = imsubnoisegauss(X)
%   Sottrae del rumore gaussiano in scala di grigi all'immagine
function Y = imsubnoisegauss(X)
  Y = X - uint8(ceil(abs(randn(256,256).*(255/4))));
end