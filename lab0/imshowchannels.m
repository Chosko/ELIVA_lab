% function imshowchannels(X)
%   Mostra i tre canali di un'immagine rgb
function imshowchannels(X)
    subplot(2,2,1), subimage(X);
    subplot(2,2,2), subimage(X(:,:,1));
    subplot(2,2,3), subimage(X(:,:,2));
    subplot(2,2,4), subimage(X(:,:,3));
end