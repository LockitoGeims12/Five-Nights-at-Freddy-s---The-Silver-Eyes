extends Node

var game_state = {
	"PLAYER_NAME": "Player",
	"PLAYER_LEVEL": 1,
	"PLAYER_XP": 0,
	"MAP": "Forest"
	}
var file_path = "user://game_state.dat" # the game data file path
var key = "DSPbuyyWpfG6HhN6" # a random key

func _ready():
	var file = File.new()
	if file.file_exists(file_path):
		_load_state()
	else:
		_create_state()

func _load_state():
	var file = File.new()
	file.open_encrypted_with_pass(file_path, File.READ, key)
	
	game_state.PLAYER_NAME = file.get_var()
	game_state.PLAYER_LEVEL = file.get_var()
	game_state.PLAYER_XP = file.get_var()
	game_state.MAP = file.get_var()
	file.close()

func _create_state():
	var file = File.new()
	file.open_encrypted_with_pass(file_path, File.WRITE, key)
	
	file.store_var(game_state.PLAYER_NAME)
	file.store_var(game_state.PLAYER_LEVEL)
	file.store_var(game_state.PLAYER_XP)
	file.store_var(game_state.MAP)
	file.close()

func _delete_state():
	var dir = Directory.new()
	var file = File.new()
	
	if file.file_exists(file_path):
		dir.remove(file_path)
		print("State file deleted")
	else:
		print("The state file does not exist")