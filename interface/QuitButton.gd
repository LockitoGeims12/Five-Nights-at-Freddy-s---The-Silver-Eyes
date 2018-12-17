extends "res://interface/GameButton.gd"

func _ready():
	$ButtonText.text = AutoLoad.LANG.QUIT

func _input(event):
	if event.is_action_pressed("mouse_left_button") && MouseIsOverButton:
		print(name + " pressed")
		get_tree().quit()