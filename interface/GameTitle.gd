extends Label

func _on_Button_button_down():
	get_tree().change_scene("res://interface/Credits.tscn")

func _on_Button_mouse_entered():
	modulate = Color(0.2, 0.2, 0.2)

func _on_Button_mouse_exited():
	modulate = Color(1, 1, 1)