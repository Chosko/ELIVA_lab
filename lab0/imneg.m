% function Y = imneg(X)
%   ritorna il negativo di un'immagine
function Y = imneg(X)
    rgb = size(X,3) == 3;
    Y(:,:,1) = 255 - X(:,:,1);
    if rgb
        Y(:,:,2) = 255 - X(:,:,2);
        Y(:,:,3) = 255 - X(:,:,3);
    end
end