% function X = imsubnoisegaussrgb(X)
%   Sottrae rumore gaussiano in ogni canale dell'immagine rgb
function Y = imsubnoisegaussrgb(X)
  Y(:,:,1) = imsubnoisegauss(X(:,:,1));
  Y(:,:,2) = imsubnoisegauss(X(:,:,2));
  Y(:,:,3) = imsubnoisegauss(X(:,:,3));
end