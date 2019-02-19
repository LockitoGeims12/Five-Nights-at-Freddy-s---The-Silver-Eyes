extends Node

var game_preloader = preload("res://core/GamePreloader.tscn").instance()

func _ready():
	if not AutoLoad.is_welcome_shown:
		var welcome_screen = (AutoLoad.RESOURCES.WELCOME_SCREEN as PackedScene).instance()
		add_child(welcome_screen)
		AutoLoad.welcome_shown = true
	set_process_input(false)

func _input(event):
	# NOTE: this input method is temporary
	if event is InputEventJoypadButton:
		if Input.is_joy_button_pressed(0, JOY_SONY_TRIANGLE):
			$"NewGameButton"._on_Button_mouse_down()
		elif Input.is_joy_button_pressed(0, JOY_SONY_CIRCLE):
			$"OptionsButton"._on_Button_mouse_down()
		elif Input.is_joy_button_pressed(0, JOY_SONY_X):
			$"ExtrasButton"._on_Button_mouse_down()
		elif Input.is_joy_button_pressed(0, JOY_SONY_SQUARE):
			$"QuitButton"._on_Button_mouse_down()

func new_game():
	get_tree().change_scene_to(AutoLoad.RESOURCES.FOREST_MAP)