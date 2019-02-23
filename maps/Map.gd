extends Node2D

enum LIGHTING_TYPE { DARK, MID_DARK, LIGHT, WITHOUT}
var lighting_type setget set_lighting, get_lighting

onready var occular: Sprite = $"Occular"

func _ready():
	set_lighting(LIGHTINGTYPES.WITHOUT)

func set_lighting(type: int):
	var alpha
	match type:
		LIGHTINGTYPES.DARK:
			alpha = 255
		LIGHTINGTYPES.MID_DARK:
			alpha = 192
		LIGHTINGTYPES.LIGHT:
			alpha = 128
		LIGHTINGTYPES.WITHOUT:
			alpha = 64
	# NOTE: write a replace code here
	occular.modulate.a = _alpha

func get_lighting() -> int:
	return(lighting_type)
