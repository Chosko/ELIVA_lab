% function map = skinmap(X)
%   Riconosce la pelle in un'immagine e ritorna una mappa binaria che la
%   identifica.
function map = skinmap(X)
    H = size(X,1);
    W = size(X,2);
    [I,Rg,By] = logopp(X);
    SCALE = round((W+H)/320);
    if (SCALE == 0)
        SCALE = 1;
    end
    Rg = medfilt2(Rg,[4*SCALE 4*SCALE]);
    By = medfilt2(By,[4*SCALE 4*SCALE]);
    
    hue = (atan2(Rg,By)*(180/pi));
    saturation = sqrt(Rg.^2 + By.^2);
    map = zeros(size(I));
    for i=1:H
        for j=1:W
            if (120<hue(i,j) & hue(i,j)<160 & 10<saturation(i,j) & saturation(i,j)<60),
                map(i,j) = 1;
            end

            if (150<hue(i,j) & hue(i,j)<180 & saturation(i,j)>20 & saturation(i,j)<80),
                map(i,j) = 1;
            end
        end
    end
end