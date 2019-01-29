extends "res://interface/GameButton.gd"

func _ready():
	$ButtonText.text = Lang.LANG.NEWGAME

func _on_Button_mouse_down():
	get_tree().change_scene_to(AutoLoad.RESOURCES.FOREST_MAP)