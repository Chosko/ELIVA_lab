 module = 255 / 6;
 lut = [linspace(0,255,module),ones(1,module*2)*255,linspace(255,0,module),zeros(1,module*2)];
 plot(lut);