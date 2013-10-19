% function X = chess(cells)
%   Genera l'immagine di una scacchiera
function X = chess(cells)
    t = 1:512;
    row = cos(pi*cells*t/size(t,2));
    X = uint8( floor(row' * row + 1) .* 255);
end