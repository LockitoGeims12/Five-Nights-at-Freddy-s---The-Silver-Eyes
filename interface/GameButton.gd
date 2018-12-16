extends Node2D

enum { NEWGAME, OPTIONS, EXTRAS, QUIT}
export(int) var ButtonType = 0
var ButtonText = "ButtonText"
var ButtonColors = {"LIGHT": Color(1, 1, 1), "DARK": Color(0.5, 0.5, 0.5)}

func _ready():
	match ButtonType:
		NEWGAME:
			ButtonText = AutoLoad.LANG.NEWGAME
		OPTIONS:
			ButtonText = AutoLoad.LANG.OPTIONS
		EXTRAS:
			ButtonText = AutoLoad.LANG.EXTRAS
		QUIT:
			ButtonText = AutoLoad.LANG.QUIT
	update()

func update():
	$ButtonText.text = ButtonText

func _on_ButtonArea_mouse_entered():
	modulate = ButtonColors.DARK

func _on_ButtonArea_mouse_exited():
	modulate = ButtonColors.LIGHT