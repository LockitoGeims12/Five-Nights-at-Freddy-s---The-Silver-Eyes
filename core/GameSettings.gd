extends Node

var GRAPHICS = {
	"ResolutionWidth": 1024,
	"ResolutionHeight": 768,
	"EnableShaders": false,
	"ShadowMapping": true
}
var SOUNDS = {
	"MaxFXPolyphony": 16,
	"EffectsVolume": 0.7,
	"MusicVolume": 0.8
}
var GAME = {
	"Difficulty": "easy",
}
var INPUT = {
	"DefaultSystem": true
}

func _ready():
	var file = File.new()
	if file.file_exists("settings.ini"):
		_loadSettings()
	else:
		_createSettings()

func _loadSettings():
	# loads the settings.ini file
	
	var file = ConfigFile.new()
	file.load("settings.ini")
	
	# assign settings.ini content to game vars
	
	GRAPHICS.ResolutionWidth = file.get_value("Graphics", "ResolutionWidth", 1024)
	GRAPHICS.ResolutionHeight = file.get_value("Graphics", "ResolutionHeight", 768)
	GRAPHICS.EnableShaders = file.get_value("Graphics", "EnableShaders", false)
	GRAPHICS.ShadowMapping = file.get_value("Graphics", "ShadowMapping", true)
	SOUNDS.MaxFXPolyphony = file.get_value("Sounds", "MaxFXPolyphony", 16)
	SOUNDS.EffectsVolume = file.get_value("Sounds", "EffectsVolume", 0.7)
	SOUNDS.MusicVolume = file.get_value("Sounds", "MusicVolume", 0.8)
	GAME.Difficulty = file.get_value("Game", "Difficulty", "easy")
	INPUT.DefaultSystem = file.get_value("Input", "DefaultSystem", true)
	
	print("Settings file loaded")
	_applySettings()

func _createSettings():
	# create the internal file
	
	var file = ConfigFile.new()
	
	# set values to the file
	
	file.set_value("Graphics", "ResolutionWidth", 1024)
	file.set_value("Graphics", "ResolutionHeight", 768)
	file.set_value("Graphics", "EnableShaders", false)
	file.set_value("Graphics", "ShadowMapping", true)
	file.set_value("Sounds", "MaxFXPolyphony", 16)
	file.set_value("Sounds", "EffectsVolume", 0.7)
	file.set_value("Sounds", "MusicVolume", 0.8)
	file.set_value("Game", "Difficulty", "easy")
	file.set_value("Input", "DefaultSystem", true)
	file.save("settings.ini")
	
	print("Settings file created")

func _applySettings():
	# apply settings that's possible to apply now
	
	OS.window_size = Vector2(GRAPHICS.ResolutionWidth, GRAPHICS.ResolutionHeight)
	AudioServer.set_bus_volume_db(0, 0)
	AudioServer.set_bus_volume_db(1, 0)