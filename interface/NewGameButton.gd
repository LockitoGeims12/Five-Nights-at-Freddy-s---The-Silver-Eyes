extends "res://interface/GameButton.gd"

func _ready():
	$ButtonText.text = AutoLoad.LANG.NEWGAME

func _input(event):
	if event.is_action_pressed("mouse_left_button") && MouseIsOverButton:
		print(name + " pressed")
		var loadingscreen = AutoLoad.PRELOAD.LOADINGSCREEN
		AutoLoad.ToLoadNow = ["res://maps/ForestMap.tscn"]
		get_tree().change_scene_to(loadingscreen)