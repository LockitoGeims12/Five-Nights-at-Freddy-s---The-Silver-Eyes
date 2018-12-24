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
	"EnableController": true
}

func _ready():
	var file = File.new()
	if file.file_exists("settings.ini"):
		_loadSettings()
	else:
		_createSettings()

func _loadSettings():
	var file = ConfigFile.new()
	file.load("settings.ini")

func _createSettings():
	var file = ConfigFile.new()
	file.set_value("Graphics", "ResolutionWidth", 1024)
	file.set_value("Graphics", "ResolutionHeight", 768)
	file.set_value("Graphics", "EnableShaders", false)
	file.set_value("Graphics", "ShadowMapping", true)
	file.set_value("Sounds", "MaxFXPolyphony", 16)
	file.set_value("Sounds", "EffectsVolume", 0.7)
	file.set_value("Sounds", "MusicVolume", 0.8)
	file.set_value("Game", "Difficulty", "easy")
	file.set_value("Input", "EnableController", true)
	file.save("settings.ini")