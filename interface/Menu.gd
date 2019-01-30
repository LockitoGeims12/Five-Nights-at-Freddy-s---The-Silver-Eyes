extends Node

# This is the first scene

func _ready():
	pass

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