extends Node2D

enum LIGHTINGTYPES { DARK, MID_DARK, LIGHT, WITHOUT}
var LightingType setget _set_lighting, _get_lighting

func _ready():
	_set_lighting(LIGHTINGTYPES.WITHOUT)

func _set_lighting(type):
	var a
	match type:
		LIGHTINGTYPES.DARK:
			a = 1
		LIGHTINGTYPES.MID_DARK:
			a = 0.75
		LIGHTINGTYPES.LIGHT:
			a = 0.5
		LIGHTINGTYPES.WITHOUT:
			a = 0.25
	$Occular.modulate.a = a

func _get_lighting():
	return(LightingType)