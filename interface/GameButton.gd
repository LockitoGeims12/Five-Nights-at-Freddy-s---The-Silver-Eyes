extends Node2D

var ButtonColors = {"LIGHT": Color(1, 1, 1), "MID_DARK": Color(0.5, 0.5, 0.5), "DARK": Color(0.2, 0.2, 0.2)}

func _on_Button_mouse_down():
	modulate = ButtonColors.DARK

func _on_Button_mouse_up():
	modulate = ButtonColors.LIGHT

func _on_GameButton_mouse_entered():
	modulate = ButtonColors.MID_DARK
	get_tree().call_group("focus", "_focus_enter")

func _on_GameButton_mouse_exited():
	modulate = ButtonColors.LIGHT
	get_tree().call_group("focus", "_focus_exit")