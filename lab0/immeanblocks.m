% function Y = immeanblocks(X,l)
%   Visualizza l'immagine a blocchi di lxl pixels dove ogni blocco � la
%   media dello stesso blocco sull'originale
function Y = immeanblocks(X,l)
    Y = zeros(size(X));
    for n=0:size(X,1)/l-1
        for m=0:size(X,2)/l-1
            for o=1:size(X,3)
                Y(l*n+1:min(l*(n+1),size(X,1)),l*m+1:min(l*(m+1),size(X,2)),o) = mean(mean(X(l*n+1:min(l*(n+1),size(X,1)),l*m+1:min(l*(m+1),size(X,2)),o)));
            end
        end
    end
    Y = uint8(Y);
end