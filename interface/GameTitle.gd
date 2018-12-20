extends Label

func _on_Button_button_down():
	get_tree().change_scene("res://interface/Credits.tscn")

func _on_Button_mouse_entered():
	$TitleAnimation.play("FocusIn")

func _on_Button_mouse_exited():
	$TitleAnimation.play("FocusOut")