import graph;
import three;
size(8cm, 8cm);

currentprojection = perspective(0.2, -0.5, 0.3);

real xmin = -3, xmax = 3;
real ymin = -3, ymax = 3;

pen nStyle = black + 1pt;
pen eStyle = purple + 2pt;
pen graphStyle = blue + 2pt;

draw((0,0,0) -- (3,0,0) -- (0,3,0) -- cycle, nStyle);
draw((1,0,0) -- (1,1,0) -- (0,1,0) -- cycle, nStyle);
draw((2,0,0) -- (0,2,0) -- (1,2,0) -- (1,1,0) -- (2,1,0) -- cycle, nStyle);

draw((0,0,2) -- (1,0,1) -- (2,0,1) -- (3,0,2) -- (2,1,1) -- (1,2,1) -- (0,3,2) -- (0,2,1) -- (0,1,1) -- cycle, eStyle);
draw((1,0,1) -- (0,1,1) -- (1,1,0.5) -- cycle, eStyle);
draw((1,1,0.5) -- (2,0,1) -- (2,1,1) -- (1,1,0.5) -- (1,2,1) -- (0,2,1) -- cycle, eStyle);

triple A = (0.6,0.6,0);
triple B = (1.1,0.6,0);
triple C = (1.4,0.9,0);
triple D = (1.4,1.4,0);
triple E = (0.9,1.4,0);
triple F = (0.6,1.1,0);

triple G = (0.4,0.4,0);
triple H = (2.05,0.9,0);
triple I = (0.9,2.05,0);

draw(A -- B -- C -- D -- E -- F -- cycle, graphStyle);

draw(G -- A, graphStyle);
draw((-1,0.4,0) -- G -- (0.4,-1,0), graphStyle);

draw(B -- (1.1,-1,0), graphStyle);

draw(C -- H, graphStyle);
draw((2.05, -1, 0) -- H -- (2.575, 1.425, 0), graphStyle);

draw(D -- (2,2,0), graphStyle);

draw(E -- I, graphStyle);
draw((-1, 2.05, 0) -- I -- (1.425, 2.575, 0), graphStyle);

draw(F -- (-1, 1.1,0), graphStyle);
