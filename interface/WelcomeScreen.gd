extends Node2D

onready var root = $"/root/Menu"
onready var new_game_button = $"/root/Menu/NewGameButton"
onready var options_button = $"/root/Menu/OptionsButton"
onready var extras_button = $"/root/Menu/ExtrasButton"
onready var quit_button = $"/root/Menu/QuitButton"
onready var game_title = $"/root/Menu/GameTitle/GameTitle"

func _disable_input():
	set_process_input(false)

func _input(event):
	if event is InputEventKey or event is InputEventMouseButton or event is InputEventJoypadButton:
		$AnimationPlayer.play("Hide")

func _draw():
	draw_rect(Rect2(0, 0, 1024, 768), Color(0, 0, 0, 0.75))

func _exit_tree():
	new_game_button._enable()
	options_button._enable()
	extras_button._enable()
	quit_button._enable()
	game_title._enable()
	root.set_process_input(true)