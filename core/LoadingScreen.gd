extends Node2D

var stuff_to_load = [] setget _set_stuff_to_load, _get_stuff_to_load
var load_id = 0 setget _set_load_id, _get_load_id

func _ready():
	_set_stuff_to_load(["teste"])

func _start():
	var load_id = 0

func _set_stuff_to_load(stuff: Array):
	stuff_to_load = stuff

func _get_stuff_to_load():
	return stuff_to_load

func _next():
	pass

func _set_load_id(id: int):
	load_id = id

func _get_load_id():
	return load_id