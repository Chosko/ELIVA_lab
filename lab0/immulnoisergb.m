% function X = immulnoisergb(X)
%   Moltiplica rumore bianco in ogni canale dell'immagine rgb
function Y = immulnoisergb(X)
  Y(:,:,1) = immulnoise(X(:,:,1));
  Y(:,:,2) = immulnoise(X(:,:,2));
  Y(:,:,3) = immulnoise(X(:,:,3));
end