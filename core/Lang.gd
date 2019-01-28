extends Node

# Current language constant
# It's not possible to change the language inside the game

const LANGUAGE = "en"

# Dict containing all the language keys (that can not be changed at the time)

var LANG = {
	"NEWGAME": "",
	"OPTIONS": "",
	"EXTRAS": "",
	"QUIT": "",
	"VERSION": "",
	"UNKNOWN": "",
	"HOWTOPLAY1": "",
	"HOWTOPLAY2": "",
	"HOWTOPLAY3": "",
	"DIALOG1": "",
	"DIALOG2": "",
	"DIALOG3": ""
	}

func _ready():
	var file = File.new()
	file.open("res://languages/" + str(LANGUAGE) + ".txt", file.READ)
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