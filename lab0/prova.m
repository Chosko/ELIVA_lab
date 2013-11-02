figure
barbara = imread('barbara.pgm');
lena = imread('lena512.pgm');
diff = imdiff(barbara,lena);
for i=1:10001
    diff = imdiff(diff,barbara);
    diff = imdiff(diff,lena);
end
imshow(diff);