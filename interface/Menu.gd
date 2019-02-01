extends Node

func _ready():
	if not AutoLoad.welcome_shown:
		var _res = AutoLoad.RESOURCES.WELCOME_SCREEN
		var _instance = _res.instance()
		add_child(_instance)
		AutoLoad.welcome_shown = true

func _input(event):
	# NOTE: this input method is temporary
	if event is InputEventJoypadButton:
		if Input.is_joy_button_pressed(0, JOY_SONY_TRIANGLE):
			$NewGameButton._on_Button_mouse_down()
		elif Input.is_joy_button_pressed(0, JOY_SONY_CIRCLE):
			$OptionsButton._on_Button_mouse_down()
		elif Input.is_joy_button_pressed(0, JOY_SONY_X):
			$ExtrasButton._on_Button_mouse_down()
		elif Input.is_joy_button_pressed(0, JOY_SONY_SQUARE):
			$QuitButton._on_Button_mouse_down()