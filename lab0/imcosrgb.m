% function R = imcosrgb(rfx, rfy, gfx, gfy, bfx, bfy)
%   Ritorna un'immagine rgb in cui ogni canale e' un prodotto di coseni.
%   Le frequenze dei coseni sono impostate dai parametri.
function R = imcosrgb(rfx, rfy, gfx, gfy, bfx, bfy)
    R(:,:,1) = imcos(rfx,rfy);
    R(:,:,2) = imcos(gfx,gfy);
    R(:,:,3) = imcos(bfx,bfy);
end
