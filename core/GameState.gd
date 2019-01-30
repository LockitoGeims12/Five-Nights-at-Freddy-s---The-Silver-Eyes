extends Node

var game_state = {
	"PLAYER_NAME": "Player",
	"PLAYER_LEVEL": 1,
	"PLAYER_XP": 0,
	"MAP": "Forest"
	}

# Paths
var file_path = "user://game_state.dat"
var hash_path = "user://game_state.hash"
var warning_path = "user://warning.txt"

# Keys
const file_key = "DSPbuyyWpfG6HhN6"
const hash_key = "QhN6bbuyxHhN9Pb2"

func _ready():
	var _file = File.new() # For verifications only
	
	if _file.file_exists(hash_path):
		_load_hashfile()
	else:
		_create_hashfile()
	if _file.file_exists(file_path):
		_load_state()
	else:
		_create_state()
	if not _file.file_exists(warning_path):
		_create_warning()

func _create_hashfile():
	var _hashfile = File.new()
	#_hashfile.open_encrypted_with_pass()

func _load_hashfile():
	var _hasfile = File.new()
	
	

func _create_warning():
	var _file = File.new()
	_file.open(warning_path, File.WRITE)
	_file.store_string("Please do not make any changes to the files in this folder. Any modification may cause deletion of the player's data.")
	_file.close()

func _load_state():
	var file = File.new()
	file.open_encrypted_with_pass(file_path, File.READ, file_key)
	game_state.PLAYER_NAME = file.get_var()
	game_state.PLAYER_LEVEL = file.get_var()
	game_state.PLAYER_XP = file.get_var()
	game_state.MAP = file.get_var()
	file.close()

func _create_state():
	if OS.has_environment("USERNAME"):
		game_state.PLAYER_NAME = OS.get_environment("USERNAME")
	
	var _file = File.new()
	_file.open_encrypted_with_pass(file_path, File.WRITE, file_key)
	_file.store_var(game_state.PLAYER_NAME)
	_file.store_var(game_state.PLAYER_LEVEL)
	_file.store_var(game_state.PLAYER_XP)
	_file.store_var(game_state.MAP)
	_file.close()
	
	var _hashfile = File.new()
	if _hashfile.file_exists(hash_path):
		var _dir = Directory.new()
		_dir.remove(hash_path)

func _delete_state():
	var file = File.new()
	
	if file.file_exists(file_path):
		var _dir = Directory.new()
		_dir.remove(file_path)
		_dir.remove(hash_path)