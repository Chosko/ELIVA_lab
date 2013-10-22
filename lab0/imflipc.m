% function Y = imflipc(X)
%   ribalta un'immagine su se stesse
function Y = imflipc(X)
    Y = uint8(rot90(eye(size(X,2))) * double(X) * rot90(eye(size(X,1))));
end