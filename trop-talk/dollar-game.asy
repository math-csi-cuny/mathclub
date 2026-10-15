import fontsize;
size(1500, 500);

picture gr;

pair A = (0,0), B = (1,-1), C = (2,0), D = (1,1);

pen p = rgb(0.2,0.2,0.2)+10;
pen q = rgb(0.2,0.2,0.2)+30+fontsize(50pt);

// Connections: A-B-C-D-A and B-D
draw(A -- D, arrow=MidArrow(size=30), p);
draw(gr, B -- C -- D -- A, p);
draw(gr, B -- D, p);

// Second connection from B to A, curved above the first
draw(gr, A .. controls (0.6,-0.4) .. B, p);
draw(gr, A .. controls (0.4,-0.6) .. B, p);
draw(A .. controls (0.6,-0.4) .. B, arrow=MidArrow(size=30), p);
draw(A .. controls (0.4,-0.6) .. B, arrow=MidArrow(size=30), p);

// Vertices and their labels
dot(gr, A, q); label("$4$", A, W, q);
dot(gr, B, q); label("$-1$", B, S, q);
dot(gr, C, q); label("$-2$", C, E, q);
dot(gr, D, q); label("$1$", D, N, q);

label("$1$", A+(4,0), W, q);
label("$1$", B+(4,0), S, q);
label("$-2$", C+(4,0), E, q);
label("$2$", D+(4,0), N, q);

add(gr);
add(shift(4,0) * gr);

draw((2.2,0.2) .. controls (2.6, 0.5) and (3.3, 0.5) .. (3.8,0.2),
     arrow=Arrow(TeXHead), p);
