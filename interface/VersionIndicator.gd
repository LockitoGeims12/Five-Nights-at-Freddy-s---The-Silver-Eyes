extends Node2D

# Sets the version showed in the menu

func _ready():
	$VersionText.text = Lang.lang.VERSION + " " + AutoLoad.GAME_VERSION