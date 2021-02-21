/*Attack rules*/

/* Combat Phase rules and facts */
activeCharacter(ulric).
activeCharacterDoneAction(false).
activeCharacterDoneMove(false).
/* Generat Game Facts */
weapon(ulric, sword).
ws(ulric, 60).
skill(ulric, melee, 20).
advantage(ulric, 0).
armor(ulric, torso, 1).
attackSkill(sword, melee).

range(sword, 1).
weaponSkill(sword, melee).
weaponDamage(sword, 4).
position(ulric, 12, 14).
position(sigmar, 12, 19).
/*
Python: query state to see what is possible 
then execute action, first query prolog to see the consequences and apply them
prolog:
what is possible
impact of actions
*/
