:-[facts, attack].

position(dummy1, 0, 0).
position(dummy2, 0, 1).
position(dummy3, 2, 0).

stat(dummy1, ws, 35).
stat(dummy2, ws, 35).
stat(dummy3, ws, 35).

skill(dummy1, meleeBasic, 5).
skill(dummy2, twohanded, 5).
skill(dummy3, polearm, 5).

advantage(dummy1, 0).
advantage(dummy2, 0).
advantage(dummy3, 0).

race(dummy1, human).
race(dummy2, human).
race(dummy3, human).

weapon(dummy1, handWeapon).
weapon(dummy2, bastard).
weapon(dummy3, halabard).

:- begin_tests(attack).
test(canAttack):-
    canAttack(dummy1, dummy2).
test(canAttack):-
    \+canAttack(dummy1, dummy3).
test(canAttack):-
    canAttack(dummy3, dummy1).



:- end_tests(attack).
