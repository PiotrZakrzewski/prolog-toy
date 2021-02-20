:- use_module(library(clpfd)).
dist(X, A1, B1, A2, B2):- X is round(sqrt((A1-A2)^2 + (B1-B2)^2)).
withinRange(Range, X1, Y1, X2, Y2):- Range #>= X, dist(X, X1, Y1, X2, Y2).
affected(X):-human(X), position(X, X1, Y1), withinRange(50,0,0, X1, Y1).
bonus(X, V):- X is (V//10).


/* Facts */
human(bla).
human(blik).
position(bla, 12, 14).
position(blik, 200, 20).
