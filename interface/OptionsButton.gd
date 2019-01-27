extends "res://interface/GameButton.gd"

# options button

func _ready():
	$ButtonText.text = Lang.LANG.OPTIONS

func _on_Button_mouse_down():
	OS.alert("It isn't available yet")