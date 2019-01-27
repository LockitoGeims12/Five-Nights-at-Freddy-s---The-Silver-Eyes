extends Node2D

# sets the version showed in the menu

func _ready():
	$VersionText.text = Lang.LANG.VERSION + " " + AutoLoad.GAME_VERSION