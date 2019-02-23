extends "res://objects/Object.gd"

var item_type = "default" setget set_item_type, get_item_type

func _ready():
	type = "item"

func get_item():
	pass

func set_item_type(type: String):
	item_type = type

func get_item_type() -> String:
	return item_type
