% function Y = lutpseudo(X)
%   Trasforma l'immagine in ingresso (in scala di grigi) in un'immagine a
%   colori con pseudocolori
function Y = lutpseudo(X)
    module = 255 / 6;
    lut = [linspace(0,255,module),ones(1,module*2)*255,linspace(255,0,module),zeros(1,module*2)];
    Y(:,:,1) = reshape(lut(X(:)'),size(X,1),size(X,2));
    lut = circshift(lut,[0,module*2]);
    Y(:,:,2) = reshape(lut(X(:)'),size(X,1),size(X,2));
    lut = circshift(lut,[0,module*2]);
    Y(:,:,3) = reshape(lut(X(:)'),size(X,1),size(X,2));
    Y = uint8(Y);
end