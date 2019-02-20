extends "res://interface/GameButton.gd"

func _ready():
	button.text = tr("LABEL_MENU_NEWGAME")

func _on_Button_mouse_down():
	(root as Node).new_game()