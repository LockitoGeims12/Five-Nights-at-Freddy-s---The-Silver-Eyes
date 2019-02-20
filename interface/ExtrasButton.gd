extends "res://interface/GameButton.gd"

func _ready():
	button.text = tr("LABEL_MENU_EXTRAS")

func _on_Button_mouse_down():
	get_tree().change_scene_to(AutoLoad.RESOURCES.EXTRAS)