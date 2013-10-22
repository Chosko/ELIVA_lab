% function Y = imflipv(X)
%   ribalta un'immagine verticalmente
function Y = imflipv(X)
    Y = uint8(rot90(eye(size(X,2))) * double(X));
end