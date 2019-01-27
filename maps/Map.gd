extends Node2D

# This class is just a base class for all maps
# It adds lighting support to maps that controls the ocullar alpha

enum LIGHTINGTYPES { DARK, MID_DARK, LIGHT, WITHOUT}
var LightingType setget _set_lighting, _get_lighting

func _ready():
	_set_lighting(LIGHTINGTYPES.WITHOUT)

func _set_lighting(type):
	var _thisAlpha
	match type:
		LIGHTINGTYPES.DARK:
			_thisAlpha = 255
		LIGHTINGTYPES.MID_DARK:
			_thisAlpha = 192
		LIGHTINGTYPES.LIGHT:
			_thisAlpha = 128
		LIGHTINGTYPES.WITHOUT:
			_thisAlpha = 64
	$Occular.modulate.a = _thisAlpha
	
	print("")

func _get_lighting():
	return(LightingType)