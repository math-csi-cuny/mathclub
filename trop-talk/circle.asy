import graph;
size(8cm, 8cm);

real xmin = -1.5, xmax = 1.5;
real ymin = -1.5, ymax = 1.5;

pen gridStyle = rgb(0.8,0.8,0.8) + 0.7pt;
pen axisStyle = black + 1pt;
pen plotStyle = purple + 2pt;

for (real i = xmin; i <= xmax; i+=0.1)
    draw((i, ymin)--(i, ymax), gridStyle);

for (real j = ymin; j <= ymax; j+=0.1)
    draw((xmin, j)--(xmax, j), gridStyle);

ticks tks = Ticks(Step = 1, step = 0.5, NoZero);

// Pass grid=true to draw gridlines at major ticks
xaxis(xmin, xmax, tks, p = axisStyle, above = true);
yaxis(ymin, ymax, tks, p = axisStyle, above = true);

draw(circle((0,0), 1), plotStyle);
label("$x^2 + y^2 = 1$", (0.4, 0.9), NE, purple);
