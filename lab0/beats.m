% function X = beats(freq, beats))
%   ritorna un'immagine in scala di grigi che mostra i battimenti
function X = beats(freq, beats)
    t = 1:512;
    row = cos(2*pi*freq*t/size(t,2));
    Y = uint8( floor((row' * row + 1) .* 64));
    row = cos(2*pi*(freq+beats)*t/size(t,2));
    X = Y + uint8( floor(((row'*row) + 1) .* 64));
end