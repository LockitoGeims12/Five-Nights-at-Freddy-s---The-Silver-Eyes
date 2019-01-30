extends "res://interface/GameButton.gd"

func _ready():
	$ButtonText.text = Lang.lang.QUIT

func _on_Button_mouse_down():
	GameSettings._update_settings()
	get_tree().quit()