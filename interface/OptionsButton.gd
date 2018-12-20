extends "res://interface/GameButton.gd"

func _ready():
	$ButtonText.text = AutoLoad.LANG.OPTIONS

func _on_Button_mouse_down():
	OS.alert("It isn't available yet")