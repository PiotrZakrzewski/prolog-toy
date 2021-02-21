:-[facts, attack].

position(dummy1, 0, 0).
position(dummy2, 0, 1).
position(dummy3, 2, 0).

stat(dummy1, ws, 35).
stat(dummy2, ws, 35).
stat(dummy3, ws, 35).

stat(dummy1, s, 40).
stat(dummy2, s, 40).
stat(dummy3, s, 40).

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

test(attackRollThreshold):-
    attackRollThreshold(Threshold, dummy1),
    Threshold =:= 40.

test(successfulAttack):-
    successfulAttack(dummy1, 39).
test(successfulAttack):-
    \+successfulAttack(dummy1, 41).
test(successfulAttack):-
    successfulAttack(dummy1, 40).

test(basicDamage):-
    basicDamage(BasicDamage, dummy1, 40),
    BasicDamage =:=  8.

:- end_tests(attack).
