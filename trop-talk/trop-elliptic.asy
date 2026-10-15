import graph;
size(8cm, 8cm);

real xmin = -3, xmax = 3;
real ymin = -3, ymax = 3;

pen nStyle = black + 0.5pt;
pen graphStyle = blue + 2pt;

draw((0,0) -- (3,0) -- (0,3) -- cycle, nStyle);
draw((1,0) -- (1,1) -- (0,1) -- cycle, nStyle);
draw((2,0) -- (0,2) -- (1,2) -- (1,1) -- (2,1) -- cycle, nStyle);

pair A = (0.6,0.6);
pair B = (1.1,0.6);
pair C = (1.4,0.9);
pair D = (1.4,1.4);
pair E = (0.9,1.4);
pair F = (0.6,1.1);

pair G = (0.4,0.4);
pair H = (2.05,0.9);
pair I = (0.9,2.05);

draw(A -- B -- C -- D -- E -- F -- cycle, graphStyle);

draw(G -- A, graphStyle);
draw((-1,0.4) -- G -- (0.4,-1), graphStyle);

draw(B -- (1.1,-1), graphStyle);

draw(C -- H, graphStyle);
draw((2.05, -1) -- H -- (2.575, 1.425), graphStyle);

draw(D -- (2,2), graphStyle);

draw(E -- I, graphStyle);
draw((-1, 2.05) -- I -- (1.425, 2.575), graphStyle);

draw(F -- (-1, 1.1), graphStyle);
