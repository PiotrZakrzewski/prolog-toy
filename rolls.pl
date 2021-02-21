:-[facts].
:- use_module(library(clpfd)).

bonus(Bonus, Characteristic):- 
    Bonus is (Characteristic//10).
sl(Roll, Threshold, SL):- 
    bonus(RB, Roll), bonus(TB, Threshold), SL is TB - RB.
unit(Unit, Roll):-  bonus(B, Roll), Unit is (Roll - (B*10)).
critical(Roll):- 
    bonus(DecimalPart, Roll),
    unit(UnitPart, Roll),
    DecimalPart #= UnitPart.
