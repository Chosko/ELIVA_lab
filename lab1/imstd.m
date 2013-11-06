% function Y = immean(X, maskW)
%   Crea un'immagine in cui ogni pixel è la media di una maschera di pixel
%   di lato maskW posizionata sull'immagine in ingresso
function Y = imstd(X, maskW)
    if mod(maskW,2) == 0
        error('makW must be an odd number');
    end
    W = size(X,2);
    H = size(X,1);
    C = size(X,3);
    X = double(X);
    for i=1:C
        for j=1:H
            for k=1:W
                offset = floor(maskW/2);
                left = max(1,k-offset);
                right = min(W,k+offset);
                up = max(1,j-offset);
                down = min(H,j+offset);
                mask = X(up:down,left:right,i);
                Y(j,k,i) = std(mask(:));
            end
        end
    end
    Y = uint8(Y);
end
