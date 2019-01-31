extends Node2D

func _disable_input():
	set_process_input(false)

func _input(event):
	if event is InputEventKey or event is InputEventMouseButton or event is InputEventJoypadButton:
		$AnimationPlayer.play("Hide")

func _draw():
	draw_rect(Rect2(0, 0, 1024, 768), Color(0, 0, 0, 0.75))

func _exit_tree():
	$"/root/Menu/NewGameButton"._enable()
	$"/root/Menu/OptionsButton"._enable()
	$"/root/Menu/ExtrasButton"._enable()
	$"/root/Menu/QuitButton"._enable()
	$"/root/Menu/GameTitle"._enable()