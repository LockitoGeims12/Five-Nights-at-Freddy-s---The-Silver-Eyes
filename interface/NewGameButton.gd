extends "res://interface/GameButton.gd"

# new game button

func _ready():
	# loads the lang
	
	$ButtonText.text = Lang.LANG.NEWGAME

func _on_Button_mouse_down():
	# loads the map and changes to it
	
	AutoLoad.RESOURCES.FOREST_MAP = load("res://maps/ForestMap.tscn")
	get_tree().change_scene_to(AutoLoad.RESOURCES.FOREST_MAP)