import graph;
import three;
size(8cm, 8cm);

currentprojection = perspective(0.4, -1, 0.3);

real xmin = -3, xmax = 3;
real ymin = -3, ymax = 3;

pen nStyle = black + 1pt;
pen eStyle = purple + 2pt;
pen graphStyle = blue + 2pt;

draw((0,0,1) -- (1,0,0.75) -- (1,1,1) -- (0,1,0.5) -- cycle, eStyle);
draw((1,0,0.75) -- (0,1,0.5), eStyle);

draw((0,0,0) -- (1,0,0) -- (1,1,0) -- (0,1,0) -- cycle, nStyle);
draw((1,0,0) -- (0,1,0), nStyle);

label("2", (-0.1,-0.1,0));
label("1", (1.1,-0.1,0));
label("0", (-0.1,1.1,0));
label("2", (1.1,1.1,0));

triple A = (0.3, 0.3, 0);
triple B = (0.7, 0.7, 0);

draw((-1, 0.3, 0) -- A -- (0.3, -1, 0), graphStyle);
draw((2, 0.7, 0) -- B -- (0.7, 2, 0), graphStyle);
draw(A -- B, graphStyle);
