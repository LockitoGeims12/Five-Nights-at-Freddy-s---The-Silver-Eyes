extends Node

const GAME_NAME = "Five Nights at Freddy's - The Silver Eyes"
const DEV_STATE = "ALPHA"
const GAME_VERSION = "0.1.0" + " " + str(DEV_STATE)

var showing_hint: bool = false
var welcome_shown: bool = false setget set_welcome_shown, is_welcome_shown

func set_welcome_shown(value: bool):
	welcome_shown = value

func is_welcome_shown() -> bool:
	return welcome_shown
