% function lutladder(X,step)
%   Esegue la LUT a gradini sull'immagine in input. Lo step indica la
%   larghezza di un gradino
function Y =  lutladder(X,step)
    lut = uint8(floor((0:255) ./ step) .* step);
    Y = reshape(lut(X(:)'),size(X,1),size(X,2));
    plot(lut);
end