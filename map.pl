:- use_module(library(clpfd)).
/*Map location rules*/
dist(X, A1, B1, A2, B2):- X is round(sqrt((A1-A2)^2 + (B1-B2)^2)).
withinRange(Range, X1, Y1, X2, Y2):- Range #>= X, dist(X, X1, Y1, X2, Y2).

:- begin_tests(map).
test(dist):- 
    dist(X1, 0,0,0,0), X1 #= 0,
    dist(X2, 0,0,0,1), X2 #= 1,
    dist(X3, 0,0,1,0), X3 #= 1,
    dist(X4, 0,1,0,0), X4 #= 1,
    dist(X5, 1,0,0,0), X5 #= 1,
    dist(X6, -1,0,0,0), X6 #= 1.

test(withinRange):-
    withinRange(1, 0,0,0,0),
    withinRange(1, 0,0,0,1),
    \+withinRange(1, 0,0,2,2).
:- end_tests(map).
