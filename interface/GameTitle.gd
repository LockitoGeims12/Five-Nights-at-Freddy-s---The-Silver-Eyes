extends Label

var active = false

func _ready():
	if AutoLoad.welcome_shown:
		active = true
	$Button.disabled = !active

func _enable():
	active = true
	$Button.disabled = !active

func _on_Button_button_down():
	if active:
		get_tree().change_scene("res://interface/Credits.tscn")

func _on_Button_mouse_entered():
	if active:
		modulate = Color(0.2, 0.2, 0.2)

func _on_Button_mouse_exited():
	if active:
		modulate = Color(1, 1, 1)