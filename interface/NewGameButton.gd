extends "res://interface/GameButton.gd"

onready var root = $"/root/Menu"
onready var button = $"ButtonText"

func _ready():
	button.text = tr("LABEL_MENU_NEWGAME")

func _on_Button_mouse_down():
	(root as Node).new_game()