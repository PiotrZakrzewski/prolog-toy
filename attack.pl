:- use_module(library(clpfd)).
:-[facts, map, rolls].

canAttack(Assiliant, Target):- 
    weapon(Assiliant, AsWeapon),
    range(AsWeapon, Range),
    position(Assiliant, AsPosX, AsPosY),
    position(Target, TarPosX, TarPosY),
    withinRange(Range, AsPosX, AsPosY, TarPosX, TarPosY).

attackRollThreshold(Threshold, Assiliant):- 
    stat(Assiliant, ws,  WS), 
    weapon(Assiliant, Weapon),
    weaponSkill(Weapon, WSkill),
    skill(Assiliant, WSkill, ME),
    advantage(Assiliant, ADV),
    Threshold is (WS + ME + (ADV*10)).

successfulAttack(Assiliant, Roll):-
    attackRollThreshold(Threshold, Assiliant),
    Threshold #>= Roll.

basicDamage(BasicDamage, Assiliant, Roll):-
    attackRollThreshold(Threshold, Assiliant),
    weapon(Assiliant, Weapon),
    weaponDamage(Weapon, WeaponDamage),
    sl(Roll, Threshold, SL),
    stat(Assiliant, s, S),
    bonus(SB, S),
    BasicDamage is (WeaponDamage + SB + SL).
