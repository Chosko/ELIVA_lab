function Y = detectface(X)
    X = double(X);
    map = skinmap(X);
    Y = map .* (X(:,:,1) + X(:,:,2) + X(:,:,3)) / 3;
end