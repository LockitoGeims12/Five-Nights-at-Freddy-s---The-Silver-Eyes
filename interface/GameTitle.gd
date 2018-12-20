extends Label

func _on_Button_button_down():
	var i = preload("res://interface/Credits.tscn")
	get_tree().change_scene_to(i)

func _on_Button_mouse_entered():
	$TitleAnimation.play("FocusIn")

func _on_Button_mouse_exited():
	$TitleAnimation.play("FocusOut")