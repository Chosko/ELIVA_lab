% function X = chessbeatsrgb(cells,rgbeats,gbbeats)
%   Genera l'immagine di una scacchiera
function X = chessbeatsrgb(cells,rgbeats,gbbeats)
    X(:,:,1) = chess(cells);
    X(:,:,2) = chess(cells+rgbeats*2);
    X(:,:,3) = chess(cells+gbbeats*2);
end