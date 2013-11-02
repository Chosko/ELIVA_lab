% function Y = imstdblocks(X,l)
%   Visualizza l'immagine a blocchi di lxl pixels dove ogni blocco è la
%   deviazione standard dello stesso blocco sull'originale
function Y = imstdblocks(X,l)
    X = double(X);
    Y = zeros(size(X));
    for n=0:size(X,1)/l-1
        for m=0:size(X,2)/l-1
            for o=1:size(X,3)
                XFrag = X(l*n+1:min(l*(n+1),size(X,1)),l*m+1:min(l*(m+1),size(X,2)),o);
                Y(l*n+1:min(l*(n+1),size(X,1)),l*m+1:min(l*(m+1),size(X,2)),o) = std(XFrag(:)');
            end
        end
    end
    Y = uint8(Y);
end