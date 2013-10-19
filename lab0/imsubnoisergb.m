% function X = imsubnoisergb(X)
%   Sottrae rumore bianco in ogni canale dell'immagine rgb
function Y = imsubnoisergb(X)
  Y(:,:,1) = imsubnoise(X(:,:,1));
  Y(:,:,2) = imsubnoise(X(:,:,2));
  Y(:,:,3) = imsubnoise(X(:,:,3));
end