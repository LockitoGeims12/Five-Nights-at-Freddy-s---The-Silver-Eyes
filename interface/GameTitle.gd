extends Label

var MouseIsOverTitle = false

func _input(event):
	if event.is_action_pressed("mouse_left_button"):
		var i = preload("res://interface/Credits.tscn")
		get_tree().change_scene_to(i)

func _on_Area2D_mouse_entered():
	MouseIsOverTitle = true
	$TitleAnimation.play("FocusIn")

func _on_Area2D_mouse_exited():
	MouseIsOverTitle = false
	$TitleAnimation.play("FocusOut")