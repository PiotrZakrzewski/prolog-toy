:-[rolls].

:- begin_tests(move).

test(bonus):-
    bonus(Bonus, 20), Bonus =:= 2.
test(bonus):-
    bonus(Bonus, 25), Bonus =:= 2.
test(sl):-
    sl(80, 80, SL), SL =:= 0.
test(sl):-
    sl(91, 80, SL), SL =:= -1.
test(sl):-
    sl(77, 80, SL), SL =:= 1.
test(critical):-
    critical(77),
    critical(11),
    \+critical(10).

:- end_tests(move).
