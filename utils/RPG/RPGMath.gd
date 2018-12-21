extends Node

func _damage(attack, defense):
	var damage = attack * ( 100.0 / (100.0 + defense))
	return damage # calculates damage and returns it

func _nextLevelXp(currentLevel):
	var xp = (currentLevel * 500) + (currentLevel * 250)
	return xp # calculates the xp to the next level

func _xp(playerLevel, enemyLevel):
	var xp = (playerLevel * enemyLevel) * 100 + (enemyLevel - playerLevel) * 100
	return xp # calculates won xp when the player won a monster and returns it