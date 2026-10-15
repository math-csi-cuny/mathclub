import fontsize;
size(1500, 500);

pair A = (0,0), B = (2,0), C = (1,1.7);

pen p = rgb(0.2,0.2,0.2)+10;
pen q = rgb(0.2,0.2,0.2)+30+fontsize(50pt);

// Connections: A-B-C-D-A and B-D
draw(A -- B -- C -- cycle, p);

// Vertices and their labels
dot(A, q); label("$2$", A, W, q);
dot(B, q); label("$-1$", B, E, q);
dot(C, q); label("$-1$", C, N, q);
