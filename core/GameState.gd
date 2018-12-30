extends Node

var STATE = {
	"PLAYER_NAME": "Player",
	"PLAYER_XP": 0,
	"MAP": "Forest"
	}

var FilePath = "user://game_data.dat"

func _ready():
	var file = File.new()
	if file.file_exists(FilePath):
		_loadState()
	else:
		_createState()

func _loadState():
	var file = File.new()
	file.open_encrypted_with_pass(FilePath, File.READ, "DevelopersNeverDie")
	
	STATE.PLAYER_NAME = file.get_var("PLAYER_NAME")
	STATE.PLAYER_XP = file.get_var("PLAYER_XP")
	STATE.MAP = file.get_var("MAP")
	
	file.close()
	
	print(STATE)

func _createState():
	var file = File.new()
	file.open_encrypted_with_pass(FilePath, File.WRITE, "DevelopersNeverDie")
	
	file.store_var(STATE.PLAYER_NAME)
	file.store_var(STATE.PLAYER_XP)
	file.store_var(STATE.MAP)
	
	file.close()
	
	print(FilePath + " created")

func _deleteState():
	var dir = Directory.new()
	dir.remove(FilePath)