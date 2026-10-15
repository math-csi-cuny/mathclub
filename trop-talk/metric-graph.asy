size(500, 500);

pen p = rgb(0.5, 0.5, 1) + 10;

draw(circle((0,0), 1), p);

for (int i = 0; i < 6; ++i) {
  real a = i*pi/3;
  pair P = (cos(a), sin(a));
  draw(P -- 2P, p);
  
  if (i % 2 == 0) {
    pair left  = (cos(a+pi/4), sin(a+pi/4));
    pair right = (cos(a-pi/4), sin(a-pi/4));
    draw(2P--(2P+left), p);
    draw(2P--(2P+right), p);
  }
}
