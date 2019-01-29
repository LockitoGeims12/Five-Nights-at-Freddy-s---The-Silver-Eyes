extends Node

# This class is used when the game needs to calculate some RPG data like XP

func _damage(attack, defense):
	var _thisDamage = attack * ( 100.0 / (100.0 + defense))
	print("Damage: " + str(_thisDamage))
	return _thisDamage # calculates damage and returns it

func _next_level_xp(currentLevel):
	var _thisNextXP = (currentLevel * 500) + (currentLevel * 250)
	print("Next level XP: " + str(_thisNextXP))
	return _thisNextXP # calculates the xp to the next level

func _xp(playerLevel, enemyLevel):
	var _thisXP = (playerLevel * enemyLevel) * 100 + (enemyLevel - playerLevel) * 100
	print("XP: " + str(_thisXP))
	return _thisXP # calculates won xp when the player won a monster and returns it