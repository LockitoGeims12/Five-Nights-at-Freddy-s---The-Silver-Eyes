extends "res://maps/Map.gd"

# This class is the forest map and extends Map.gd
# So it has lighting support

func _ready():
	_set_lighting(LIGHTINGTYPES.DARK)