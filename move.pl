:-[facts, map].
/*Move rules*/

occupied(X, Y):- position(_, X, Y).
free(X, Y):- \+occupied(X, Y).
moveRange(Actor, ActorRange):-
    race(Actor, Race), movement(Race, Range), ActorRange is Range.
canMove(Mover, X, Y):-
    moveRange(Mover, Range),
    position(Mover, CurrX, CurrY),
    withinRange(Range, X, Y, CurrX, CurrY),
    free(X,Y).
