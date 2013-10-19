% function X = imcosrand(maxf)
%   Ritorna un'immagine rgb in cui ogni canale e' un prodotto di coseni in
%   x e y con frequenze random.
%   maxf determina il massimo delle frequenze che possono essere estratte
function X = imcosrand(maxf)
    rfx = rand(1) * maxf;
    rfy = rand(1) * maxf;
    gfx = rand(1) * maxf;
    gfy = rand(1) * maxf;
    bfx = rand(1) * maxf;
    bfy = rand(1) * maxf;
    X = imcosrgb(rfx,rfy,gfx,gfy,bfx,bfy);
end