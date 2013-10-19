% function X = immulnoisegaussrgb(X)
%   Sottrae rumore gaussiano in ogni canale dell'immagine rgb
function Y = immulnoisegaussrgb(X)
  Y(:,:,1) = immulnoisegauss(X(:,:,1));
  Y(:,:,2) = immulnoisegauss(X(:,:,2));
  Y(:,:,3) = immulnoisegauss(X(:,:,3));
end