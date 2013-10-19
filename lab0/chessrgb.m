% function X = chessrgb(rcells,gcells,bcells)
%   Genera l'immagine di una scacchiera
function X = chessrgb(rcells,gcells,bcells)
    X(:,:,1) = chess(rcells);
    X(:,:,2) = chess(gcells);
    X(:,:,3) = chess(bcells);
end