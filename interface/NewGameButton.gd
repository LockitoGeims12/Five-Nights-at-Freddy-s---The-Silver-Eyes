extends "res://interface/GameButton.gd"

onready var root = $"/root/Menu"

func _ready():
	$ButtonText.text = Lang.lang.NEWGAME

func _on_Button_mouse_down():
	(root as Node).new_game()