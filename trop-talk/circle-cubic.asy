import graph;
size(8cm, 8cm);

real xmin = -2.5, xmax = 2.5;
real ymin = -2.5, ymax = 2.5;

pen gridStyle = rgb(0.8,0.8,0.8) + 0.7pt;
pen axisStyle = black + 1pt;
pen plotStyle = purple + 2pt;
pen plotStyle2 = orange + 2pt;

real f(real x) {
    return x^3 - 3x;
}

for (real i = xmin; i <= xmax; i+=0.25)
    draw((i, ymin)--(i, ymax), gridStyle);

for (real j = ymin; j <= ymax; j+=0.25)
    draw((xmin, j)--(xmax, j), gridStyle);

ticks tks = Ticks(Step = 1, step = 0.5, NoZero);

// Pass grid=true to draw gridlines at major ticks
xaxis(xmin, xmax, tks, p = axisStyle, above = true);
yaxis(ymin, ymax, tks, p = axisStyle, above = true);

draw(circle((0,0), 2), plotStyle);
label("$x^2 + y^2 = 4$", (0.8, 1.8), NE, purple);

draw(graph(f, -2.5, 2.5), p = plotStyle2);
label("$y = x^3 - 3x$", (-2, -2), SE, orange);

ylimits(ymin,ymax,Crop);
