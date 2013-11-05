%function h = imhistogram(X)
%   Ritorna l'istogramma dell'immagine X
function h = imhistogram(X)
    h = zeros(1,256);
    X = X(:)';
    for i=1:size(X,2)
        h(X(i)) = h(X(i)+1) + 1;
    end
end