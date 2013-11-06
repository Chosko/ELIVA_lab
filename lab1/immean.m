% function Y = immean(X, maskW)
%   Crea un'immagine in cui ogni pixel è la media di una maschera di pixel
%   di lato maskW posizionata sull'immagine in ingresso
function Y = immean(X, maskW)
    if mod(maskW,2) == 0
        error('makW must be an odd number');
    end
    mask = zeros(maskW,maskW);
    W = size(X,2);
    H = size(X,1);
    C = size(X,3);
    X = double(X);
    for i=1:C
        for j=1:H
            for k=1:W
                sum = 0;
                count = 0;
                offset = floor(maskW/2);
                for l=(-offset):offset
                    for m=(-offset):offset
                        curj = j+l;
                        curk = k+m;
                        if curj > 0 && curj <= H && curk > 0 && curk <= W
                            sum = sum + X(curj,curk,i);
                            count = count + 1;
                        end
                    end
                end
                Y(j,k,i) = uint8(sum/count);
            end
        end
    end
end
