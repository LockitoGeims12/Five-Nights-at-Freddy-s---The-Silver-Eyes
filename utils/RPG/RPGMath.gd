extends Node

static func damage(attack: int, defense: int) -> int:
	var damage: int = attack * ( 100 / (100 + defense))
	return round(damage) # Calculates damage and returns it

static func xp_for_next_level(current_level: int) -> int:
	var xp: int = (current_level * 500) + (current_level * 250)
	return round(xp) # Calculates the xp to the next level

static func xp(player_level: int, enemy_level: int) -> int:
	var xp: int = (player_level * enemy_level) * 100 + (enemy_level - player_level) * 100
	return round(xp) # Calculates won xp when the player won a monster and returns it
