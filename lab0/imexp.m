% function Y = imexp(X)
%   ritorna un'immagine che ha come intensit� l'esponenziale dell'immagine
%   originale
function Y = imexp(X)
    Y = uint8(exp(double(X)) ./ exp(255) .* 255);
end