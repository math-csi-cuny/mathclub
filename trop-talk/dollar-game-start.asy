import fontsize;
size(1500, 500);

pair A = (0,0), B = (1,-1), C = (2,0), D = (1,1);

pen p = rgb(0.2,0.2,0.2)+10;
pen q = rgb(0.2,0.2,0.2)+30+fontsize(50pt);

// Connections: A-B-C-D-A and B-D
draw(B -- C -- D -- A, p);
draw(B -- D, p);

// Second connection from B to A, curved above the first
draw(A .. controls (0.6,-0.4) .. B, p);
draw(A .. controls (0.4,-0.6) .. B, p);

// Vertices and their labels
dot(A, q); label("$4$", A, W, q);
dot(B, q); label("$-1$", B, S, q);
dot(C, q); label("$-2$", C, E, q);
dot(D, q); label("$1$", D, N, q);
