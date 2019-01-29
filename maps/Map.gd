extends Node2D

# This class is just a base class for all maps
# It adds lighting support to maps that controls the ocullar alpha

enum LIGHTINGTYPES { DARK, MID_DARK, LIGHT, WITHOUT}
var LightingType setget _set_lighting, _get_lighting

func _ready():
	_set_lighting(LIGHTINGTYPES.WITHOUT)

func _set_lighting(type):
	var _alpha
	match type:
		LIGHTINGTYPES.DARK:
			_alpha = 255
		LIGHTINGTYPES.MID_DARK:
			_alpha = 192
		LIGHTINGTYPES.LIGHT:
			_alpha = 128
		LIGHTINGTYPES.WITHOUT:
			_alpha = 64
	$Occular.modulate.a = _alpha

func _get_lighting():
	return(LightingType)