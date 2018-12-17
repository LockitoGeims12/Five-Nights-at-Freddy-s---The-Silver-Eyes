extends Node2D

enum LIGHTINGTYPES { DARK, MID_DARK, LIGHT, WITHOUT}
var LightingType setget _set_lighting, _get_lighting

func _ready():
	_set_lighting(LIGHTINGTYPES.WITHOUT)

func _set_lighting(type):
	var a
	match type:
		LIGHTINGTYPES.DARK:
			a = 255
		LIGHTINGTYPES.MID_DARK:
			a = 192
		LIGHTINGTYPES.LIGHT:
			a = 128
		LIGHTINGTYPES.WITHOUT:
			a = 64
	$Occular.modulate.a = a

func _get_lighting():
	return(LightingType)