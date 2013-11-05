%function H = imcumhist(X)
%   Ritorna l'istogramma cumulativo dell'immagine X
function H = imcumhist(X)
    h = zeros(1,256);
    X = X(:)';
    for i=1:size(X,2)
        h(X(i) + 1) = h(X(i)+1) + 1;
    end
    H = zeros(1,256);
    for i=2:256
        H(i) = H(i-1) + h(i-1);
    end
end