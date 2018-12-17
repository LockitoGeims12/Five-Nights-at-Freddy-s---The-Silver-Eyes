extends Node2D

var ButtonColors = {"LIGHT": Color(1, 1, 1), "MID_DARK": Color(0.5, 0.5, 0.5), "DARK": Color(0.2, 0.2, 0.2)}
var MouseIsOverButton = false

#func _ready():
#	match ButtonType:
#		0:
#			$ButtonText.text = AutoLoad.LANG.NEWGAME
#		1:
#			$ButtonText.text = AutoLoad.LANG.OPTIONS
#		2:
#			$ButtonText.text = AutoLoad.LANG.EXTRAS
#		3:
#			$ButtonText.text = AutoLoad.LANG.QUIT

func _input(event):
	if event.is_action_pressed("mouse_left_button") && MouseIsOverButton:
		modulate = ButtonColors.DARK
	elif event.is_action_released("mouse_left_button"):
		modulate = ButtonColors.LIGHT

func _on_ButtonArea_mouse_entered():
	modulate = ButtonColors.MID_DARK
	MouseIsOverButton = true

func _on_ButtonArea_mouse_exited():
	modulate = ButtonColors.LIGHT
	MouseIsOverButton = false