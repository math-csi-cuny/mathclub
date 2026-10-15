import graph;
size(8cm, 8cm);

real xmin = -3, xmax = 3;
real ymin = -3, ymax = 3;

pen gridStyle = rgb(0.8,0.8,0.8) + 0.7pt;
pen axisStyle = black + 1pt;
pen plotStyle = purple + 2pt;

for (real i = xmin; i <= xmax; i+=0.25)
    draw((i, ymin)--(i, ymax), gridStyle);

for (real j = ymin; j <= ymax; j+=0.25)
    draw((xmin, j)--(xmax, j), gridStyle);

ticks tks = Ticks(Step = 1, step = 0.5, NoZero);

// Pass grid=true to draw gridlines at major ticks
xaxis(xmin, xmax, tks, p = axisStyle, above = true);
yaxis(ymin, ymax, tks, p = axisStyle, above = true);

draw((0,0) -- (3, 3), plotStyle);
draw((0,0) -- (-3, 0), plotStyle);
draw((0,0) -- (0, -3), plotStyle);
