:- use_module(library(clpfd)).
/*Map location rules*/
dist(X, A1, B1, A2, B2):- X is round(sqrt((A1-A2)^2 + (B1-B2)^2)).
withinRange(Range, X1, Y1, X2, Y2):- Range #>= X, dist(X, X1, Y1, X2, Y2).

:- begin_tests(map).
test(dist):- dist(X1, 0,0,0,0), X1 #= 0.

:- end_tests(map).
