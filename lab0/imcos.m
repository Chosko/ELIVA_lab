% function imcos(fx, fy)
%   ritorna un'immagine in scala di grigi composta dal prodotto di un
%   coseno con frequenza fx sulle righe e un coseno con frequenza fy sulle
%   colonne
function X = imcos(fx, fy)
    t = 1:512;
    row = cos(2*pi*fx*t/size(t,2));
    col = cos(2*pi*fy*t/size(t,2))';
    X = uint8( floor(((col*row) + 1) .* 128));
end