extends Node2D

func _ready():
	$VersionText.text = Lang.LANG.VERSION + " " + AutoLoad.GAME_VERSION