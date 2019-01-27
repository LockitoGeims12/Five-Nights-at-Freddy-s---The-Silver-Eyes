extends "res://interface/GameButton.gd"

func _ready():
	$ButtonText.text = Lang.LANG.QUIT

func _on_Button_mouse_down():
	get_tree().quit()