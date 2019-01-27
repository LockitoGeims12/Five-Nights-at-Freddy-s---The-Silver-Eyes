extends "res://interface/GameButton.gd"

# quit button

func _ready():
	$ButtonText.text = Lang.LANG.QUIT

func _on_Button_mouse_down():
	# when the player clicks the button, the game is closed 
	
	get_tree().quit()