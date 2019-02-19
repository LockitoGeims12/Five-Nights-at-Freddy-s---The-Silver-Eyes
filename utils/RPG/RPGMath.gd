extends Node

static func _damage(attack, defense):
	var damage = attack * ( 100.0 / (100.0 + defense))
	return damage # Calculates at damage and returns it

static func _next_level_xp(current_level):
	var xp = (current_level * 500) + (current_level * 250)
	return xp # Calculates the xp to the next level

static func _xp(player_level, enemy_level):
	var xp = (player_level * enemy_level) * 100 + (enemy_level - player_level) * 100
	return xp # Calculates won xp when the player won a monster and returns it