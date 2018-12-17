extends Node2D

func _ready():
	$VersionText.text = AutoLoad.LANG.VERSION + " " + AutoLoad.GAME_VERSION