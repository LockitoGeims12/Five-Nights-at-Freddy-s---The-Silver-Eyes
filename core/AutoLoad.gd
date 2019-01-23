extends Node

const GAME_NAME = "Five Nights at Freddy's - The Silver Eyes" # Constant containing the game name
var DEV_STATE = "alpha" # The current development state
var GAME_VERSION = "0.1.0" + " " + DEV_STATE # The current version (with the development state)

var RESOURCES = {
	"FOREST_MAP": preload("res://maps/ForestMap.tscn")
	}