extends Node

# keys by section

var GRAPHICS = {
	"WindowX": 0,
	"WindowY": 0,
	"Width": 1024.0,
	"Height": 768.0,
	"WindowState": "Normal",
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
		_load_settings()
	else:
		_create_settings()

func _load_settings():
	var _file = ConfigFile.new()
	_file.load("settings.ini")
	GRAPHICS.WindowX = _file.get_value("Graphics", "WindowX", 0)
	GRAPHICS.WindowY = _file.get_value("Graphics", "WindowY", 0) 
	GRAPHICS.Width = _file.get_value("Graphics", "Width", 1024.0)
	GRAPHICS.Height = _file.get_value("Graphics", "Height", 768.0)
	GRAPHICS.WindowState = _file.get_value("Graphics", "WindowState", "Normal")
	GRAPHICS.EnableShaders = _file.get_value("Graphics", "EnableShaders", false)
	GRAPHICS.ShadowMapping = _file.get_value("Graphics", "ShadowMapping", true)
	SOUNDS.MaxFXPolyphony = _file.get_value("Sounds", "MaxFXPolyphony", 16)
	SOUNDS.EffectsVolume = _file.get_value("Sounds", "EffectsVolume", 0.7)
	SOUNDS.MusicVolume = _file.get_value("Sounds", "MusicVolume", 0.8)
	GAME.Difficulty = _file.get_value("Game", "Difficulty", "easy")
	INPUT.DefaultSystem = _file.get_value("Input", "DefaultSystem", true)
	_apply_settings()

func _create_settings():
	var _config = ConfigFile.new()
	_config.set_value("Graphics", "Width", 1024.0)
	_config.set_value("Graphics", "Height", 768.0)
	_config.set_value("Graphics", "EnableShaders", false)
	_config.set_value("Graphics", "ShadowMapping", true)
	_config.set_value("Sounds", "MaxFXPolyphony", 16)
	_config.set_value("Sounds", "EffectsVolume", 0.7)
	_config.set_value("Sounds", "MusicVolume", 0.8)
	_config.set_value("Game", "Difficulty", "easy")
	_config.set_value("Input", "DefaultSystem", true)
	_config.save("settings.ini")

func _apply_settings():
	OS.window_position = Vector2(GRAPHICS.WindowX, GRAPHICS.WindowY)
	OS.window_size = Vector2(GRAPHICS.Width, GRAPHICS.Height)
	AudioServer.set_bus_volume_db(0, 0)

func _update_settings():
	GRAPHICS.ResolutionWidth = OS.window_size.x
	GRAPHICS.ResolutionHeight = OS.window_size.y
	
	var _config = ConfigFile.new()
	_config.set_value("Graphics", "ResolutionWidth", GRAPHICS.ResolutionWidth)
	_config.set_value("Graphics", "ResolutionHeight", GRAPHICS.ResolutionHeight)
	_config.set_value("Graphics", "EnableShaders", GRAPHICS.EnableShaders)
	_config.set_value("Graphics", "ShadowMapping", GRAPHICS.ShadowMapping)
	_config.set_value("Sounds", "MaxFXPolyphony", SOUNDS.MaxFXPolyphony)
	_config.set_value("Sounds", "EffectsVolume", SOUNDS.FXVolume)
	_config.set_value("Sounds", "MusicVolume", SOUNDS.MusicVolume)
	_config.set_value("Game", "Difficulty", GAME.Difficulty)
	_config.set_value("Input", "DefaultSystem", INPUT.DefaultSystem)
	_config.save("settings.ini")