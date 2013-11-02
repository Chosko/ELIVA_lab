% function Z = imdiff(X,Y)
%   Ritorna il valore assoluto della differenza di 2 immagini
function Z = imdiff(X,Y)
    Z = uint8(abs(double(X)-double(Y)));
end