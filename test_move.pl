:-[move].

position(dummy1, 0, 0).
position(dummy2, 7, -7).
race(dummy1, human).
race(dummy2, dwarf).

:- begin_tests(move).

test(occupied):-
    occupied(0,0),
    occupied(7, -7).
test(free):-
    free(1, 1),
    free(7, 7).
test(canMove):-
    \+canMove(dummy1, 0, 0),
    \+canMove(dummy1, 7, -7),
    canMove(dummy1, 0, 1),
    canMove(dummy1, 0, 5),
    \+canMove(dummy2, 12, -7).

:- end_tests(move).
