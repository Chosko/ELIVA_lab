% function Y = lutramp(X,r1,r2)
%   Esegue una trasformazione LUT a rampa, saturando le intensità più basse
%   di r1 e quelle più alte di r2
function Y = lutramp(X,r1,r2)
   Y = uint8( (double(X)-r1) ./ (r2-r1) .* 255);
end