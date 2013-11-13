% function Y = imquant(X, numbit)
%   Riquantizza l'immagine in input, secondo il numero di bit inseriti
function Y = imquant(X, numbit)
    X = double(X);
    Y = uint8(round(X/2^(8-numbit+1)) * 2^(8-numbit+1));
end