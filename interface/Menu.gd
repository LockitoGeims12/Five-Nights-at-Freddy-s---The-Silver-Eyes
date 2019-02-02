extends Node

func _ready():
	if not AutoLoad.welcome_shown:
		var _myClass = AutoLoad.RESOURCES.WELCOME_SCREEN
		var _myInstance = _myClass.instance()
		add_child(_myInstance)
		AutoLoad.welcome_shown = true

func _input(event):
	# NOTE: this input method is temporary
	if AutoLoad.welcome_shown && event is InputEventJoypadButton:
		if Input.is_joy_button_pressed(0, JOY_SONY_TRIANGLE):
			$NewGameButton._on_Button_mouse_down()
		elif Input.is_joy_button_pressed(0, JOY_SONY_CIRCLE):
			$OptionsButton._on_Button_mouse_down()
		elif Input.is_joy_button_pressed(0, JOY_SONY_X):
			$ExtrasButton._on_Button_mouse_down()
		elif Input.is_joy_button_pressed(0, JOY_SONY_SQUARE):
			$QuitButton._on_Button_mouse_down()