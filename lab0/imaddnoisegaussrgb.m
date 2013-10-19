% function X = imaddnoisegaussrgb(X)
%   Aggiunge rumore gaussiano in ogni canale dell'immagine rgb
function Y = imaddnoisegaussrgb(X)
  Y(:,:,1) = imaddnoisegauss(X(:,:,1));
  Y(:,:,2) = imaddnoisegauss(X(:,:,2));
  Y(:,:,3) = imaddnoisegauss(X(:,:,3));
end