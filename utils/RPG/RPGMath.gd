extends Node

func _damage(attack, defense):
	var damage = attack * ( 100.0 / (100.0 + defense))
	return damage # calculates damage and returns it

func _xp(playerLevel, enemyLevel):
	var xp = (playerLevel * enemyLevel) * 100 + (enemyLevel - playerLevel) * 100
	return xp # calculates won xp and returns it