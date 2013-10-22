% function Y = imaddnoisegauss(X)
%   Aggiunge del rumore gaussiano in scala di grigi all'immagine
function Y = imaddnoisegauss(X)
  Y = X + uint8(ceil(abs(randn(512,512).*(255/4))));
end