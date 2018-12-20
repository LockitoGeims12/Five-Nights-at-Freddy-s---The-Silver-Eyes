extends "res://interface/GameButton.gd"

func _ready():
	$ButtonText.text = AutoLoad.LANG.NEWGAME

func _on_Button_mouse_down():
	AutoLoad.RESOURCES.FOREST_MAP = load("res://maps/ForestMap.tscn")
	get_tree().change_scene_to(AutoLoad.RESOURCES.FOREST_MAP)