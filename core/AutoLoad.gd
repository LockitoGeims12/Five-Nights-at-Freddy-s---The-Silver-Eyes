extends Node

# Game informations constants

const GAME_NAME = "Five Nights at Freddy's - The Silver Eyes" # Constant containing the game name
const DEV_STATE = "alpha" # The current development state
const GAME_VERSION = "0.1.0" + " " + DEV_STATE # The current version (with the development state)

var showing_hint = false
var welcome_shown = false setget set_welcome_shown, is_welcome_shown

func set_welcome_shown(value: bool):
	welcome_shown = value

func is_welcome_shown():
	return welcome_shown