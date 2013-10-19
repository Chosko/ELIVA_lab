% function X = imrandrgb()
%   Genera un immagine in rgb contenente rumore bianco
function X = imrandrgb()
    X(:,:,1) = imrand;
    X(:,:,2) = imrand;
    X(:,:,3) = imrand;
end