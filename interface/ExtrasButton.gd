extends "res://interface/GameButton.gd"

func _ready():
	$ButtonText.text = Lang.lang.EXTRAS

func _on_Button_mouse_down():
	var _err = get_tree().change_scene_to(AutoLoad.RESOURCES.EXTRAS)
	print(_err)