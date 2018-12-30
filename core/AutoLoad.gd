extends Node

const GAME_NAME = "Five Nights at Freddy's - The Silver Eyes"
const GAME_VERSION = "0.1.0"

var LANG = {
	"NEWGAME": "",
	"OPTIONS": "",
	"EXTRAS": "",
	"QUIT": "",
	"VERSION": "",
	"UNKNOWN": "",
	"HOWTOPLAY1": "",
	"HOWTOPLAY2": "",
	"HOWTOPLAY3": ""
	}

var GameLanguage = "en"

var RESOURCES = {
	"FOREST_MAP": preload("res://maps/ForestMap.tscn")
	}

func _ready():
	var file = File.new()
	file.open("res://languages/" + str(GameLanguage) + ".txt", file.READ)
	LANG.NEWGAME = file.get_line()
	LANG.OPTIONS = file.get_line()
	LANG.EXTRAS = file.get_line()
	LANG.QUIT = file.get_line()
	LANG.VERSION = file.get_line()
	LANG.UNKNOWN = file.get_line()
	LANG.HOWTOPLAY1 = file.get_line()
	LANG.HOWTOPLAY2 = file.get_line()
	LANG.HOWTOPLAY3 = file.get_line()
	file.close()