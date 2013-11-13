% function Y = imunwatermark(X,orig)
%   Inserisce
function Y = imunwatermark(X)
    Y = uint8(mod(X,2) .* 255);
end