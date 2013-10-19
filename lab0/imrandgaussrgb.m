% function X = imrandgaussrgb()
%   Genera un immagine in rgb contenente rumore gaussiano
function X = imrandgaussrgb()
    X(:,:,1) = imrandgauss;
    X(:,:,2) = imrandgauss;
    X(:,:,3) = imrandgauss;
end