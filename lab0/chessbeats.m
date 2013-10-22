% function X = chessbeats(cells, beats)
%   ritorna una scacchiera con interferenza
function X = chessbeats(cells, beats)
    t = 1:512;
    row = cos(pi*cells*t/size(t,2));
    Y = uint8( floor(row' * row + 1) .* 128);
    row = cos(pi*(cells+beats*2)*t/size(t,2));
    X = Y + uint8( floor((row'*row) + 1) .* 128);
end