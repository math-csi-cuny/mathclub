import fontsize;
size(500, 500);

pair A = (0,0), B = (2,0), C = (3,1.7);
pair F = (-1,1.7), e = (0,3.4), D = (2,3.4);

pen p = rgb(0.2,0.2,0.2)+10;
pen q = rgb(0.2,0.2,0.2)+30+fontsize(50pt);

// Connections: A-B-C-D-A and B-D
draw(A -- B -- C -- D -- e -- F -- cycle, p);

// Vertices and their labels
dot(A, q); label("$0$", A, W, q);
dot(B, q); label("$0$", B, E, q);
dot(C, q); label("$-2$", C, E, q);
dot(D, q); label("$0$", D, E, q);
dot(e, q); label("$0$", e, W, q);
dot(F, q); label("$2$", F, W, q);
