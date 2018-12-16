extends Node2D

var ButtonText = "ButtonText"

func _ready():
	update()

func update():
	$ButtonText.text = ButtonText

func _on_ButtonArea_mouse_entered():
	pass

func _on_ButtonArea_mouse_exited():
	pass