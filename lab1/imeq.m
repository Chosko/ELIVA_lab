% function Y = imeq(X)
%   Esegue il miglioramento dei contrasti utilizzando l'equalizzazione
%   dell'istogramma dell'immagine
function Y = imeq(X)
    for i=1:size(X,3)
        channel = X(:,:,i);
        H = imcumhist(channel);
        denom = size(channel,1) * size(channel,2);
        Y(:,:,i) = uint8(reshape(255 .* H(channel(:)' + 1) ./ denom, size(channel,1), size(channel,2)));
    end
end