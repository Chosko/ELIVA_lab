% function X = imaddnoisergb(X)
%   Aggiunge rumore bianco in ogni canale dell'immagine rgb
function Y = imaddnoisergb(X)
  Y(:,:,1) = imaddnoise(X(:,:,1));
  Y(:,:,2) = imaddnoise(X(:,:,2));
  Y(:,:,3) = imaddnoise(X(:,:,3));
end