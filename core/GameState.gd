extends Node

# This class loads, save and applies player's game data

var STATE = {
	"PLAYER_NAME": "Player",
	"PLAYER_LEVEL": 1,
	"PLAYER_XP": 0,
	"MAP": "Forest"
	}

var FilePath = "user://game_state.dat"

var Key = "99876827" # encryptation key

func _ready():
	var file = File.new()
	if file.file_exists(FilePath):
		_loadState()
	else:
		_createState()

func _loadState():
	var file = File.new()
	file.open_encrypted_with_pass(FilePath, File.READ, Key)
	
	STATE.PLAYER_NAME = file.get_var()
	STATE.PLAYER_LEVEL = file.get_var()
	STATE.PLAYER_XP = file.get_var()
	STATE.MAP = file.get_var()
	file.close()

func _createState():
	var file = File.new()
	file.open_encrypted_with_pass(FilePath, File.WRITE, Key)
	
	file.store_var(STATE.PLAYER_NAME)
	file.store_var(STATE.PLAYER_LEVEL)
	file.store_var(STATE.PLAYER_XP)
	file.store_var(STATE.MAP)
	
	file.close()

func _deleteState():
	var dir = Directory.new()
	var file = File.new()
	
	if file.file_exists(FilePath):
		dir.remove(FilePath)
		print("State file deleted")
	else:
		print("The state file does not exist")