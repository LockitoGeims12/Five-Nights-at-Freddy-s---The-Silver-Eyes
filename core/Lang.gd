extends Node

# Current language constant
# It's not possible to change the language inside the game

const LANGUAGE = "en"

# Dict containing all the language keys

var lang = {
	"NEWGAME": "",
	"OPTIONS": "",
	"EXTRAS": "",
	"QUIT": "",
	"VERSION": "",
	"UNKNOWN": "",
	"DIALOG1": "",
	"DIALOG2": "",
	"DIALOG3": ""
	}

func _ready():
	var file = File.new()
	file.open("res://languages/" + str(LANGUAGE) + ".txt", file.READ)
	lang.NEWGAME = file.get_line()
	lang.OPTIONS = file.get_line()
	lang.EXTRAS = file.get_line()
	lang.QUIT = file.get_line()
	lang.VERSION = file.get_line()
	lang.UNKNOWN = file.get_line()
	lang.DIALOG1 = file.get_line()
	lang.DIALOG2 = file.get_line()
	lang.DIALOG3 = file.get_line()
	file.close()