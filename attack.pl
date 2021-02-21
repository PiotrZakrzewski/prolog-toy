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
    Threshold #=< Roll.

basicDamage(BasicDamage, Assiliant, Roll, Threshold):-
    weapon(Assiliant, Weapon),
    weaponDamage(Weapon, WeaponDamage),
    sl(Roll, Threshold, SL),
    stat(Assiliant, strength, SB),
    BasicDamage is (WeaponDamage + bonus(SB) + SL).
