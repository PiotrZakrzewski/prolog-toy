/* Common facts about the combat mechanics in WFRP 4ed*/

movement(human, 6).
movement(dwarf, 4).

/*Attack range*/
range(handWeapon, 1).
range(halabard, 2).
range(bastard, 1).

/*Value added to SB to get basic damage*/
weaponDamage(handWeapon, 4).
weaponDamage(halabard, 4).
weaponDamage(bastard, 4).

/*Skill that will be used to test the attack with given weapon*/
weaponSkill(handWeapon, meleeBasic).
weaponSkill(halabard, polearm).
weaponSkill(bastard, twohanded).
