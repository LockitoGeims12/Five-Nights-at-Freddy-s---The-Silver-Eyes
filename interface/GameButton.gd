extends Node2D

var ButtonColors = {"LIGHT": Color(1, 1, 1), "MID_DARK": Color(0.5, 0.5, 0.5), "DARK": Color(0.2, 0.2, 0.2)}
var MouseIsOverButton = false

func _input(event):
	if event.is_action_pressed("mouse_left_button") && MouseIsOverButton:
		modulate = ButtonColors.DARK
	elif event.is_action_released("mouse_left_button"):
		modulate = ButtonColors.LIGHT

func _on_ButtonArea_mouse_entered():
	set_process_input(true)
	modulate = ButtonColors.MID_DARK
	MouseIsOverButton = true

func _on_ButtonArea_mouse_exited():
	set_process_input(false)
	modulate = ButtonColors.LIGHT
	MouseIsOverButton = false