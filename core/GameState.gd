extends Node

# This class loads, save and applies game data like resolution

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
	
	if file.is_open():
		STATE.PLAYER_NAME = file.get_var("PLAYER_NAME")
		STATE.PLAYER_XP = file.get_var("PLAYER_XP")
		STATE.MAP = file.get_var("MAP")
		print("State file loaded")
	else:
		print("Error loading state files at " + FilePath)
		file.close()
		get_tree().quit()
	
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
	var file = File.new()
	if file.file_exists(FilePath):
		dir.remove(FilePath)
		print("State file deleted")
	else:
		print("The state file does not exist")