% function Y = imcut(X,x0,xf,y0,yf)
%   taglia un'immagine
function Y = imcut(X,x0,xf,y0,yf)
    Y = X(y0:yf,x0:xf);
end