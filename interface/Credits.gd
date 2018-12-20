extends Node

func _input(event):
	if event.is_action_pressed("escape"):
		_backToMenu()

func _backToMenu():
	get_tree().change_scene("res://interface/Menu.tscn")