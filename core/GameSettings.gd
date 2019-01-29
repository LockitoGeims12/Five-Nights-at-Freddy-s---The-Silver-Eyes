extends Node

var file_path = "settings.ini"

# Keys by section

var GRAPHICS = {
	"WindowX": 0,
	"WindowY": 0,
	"Width": 1024.0,
	"Height": 768.0,
	"Maximized": true
}
var SOUNDS = {
	"FXVolume": 0.7,
	"MusicVolume": 0.8
}

func _ready():
#	GRAPHICS.Width = OS.get_screen_size().x
#	GRAPHICS.Height = OS.get_screen_size().y
#	OS.window_size = OS.get_screen_size()
#	OS.window_maximized = true
	
#	var timer = Timer.new()
#	timer.connect("timeout", self, "_on_game_loaded")
#	add_child(timer)
#	timer.name = "timer"
#	timer.one_shot = true
#	timer.wait_time = 0.1
#	timer.start()
	
	var file = File.new()
	if file.file_exists(file_path):
		_load_settings()
	else:
		GRAPHICS.Width = OS.get_screen_size().x
		GRAPHICS.Height = OS.get_screen_size().y
		OS.window_size = OS.get_screen_size()
		OS.window_maximized = true
		_create_settings()

func _load_settings():
	var _file = ConfigFile.new()
	_file.load(file_path)
	GRAPHICS.WindowX = _file.get_value("Graphics", "WindowX", GRAPHICS.WindowX)
	GRAPHICS.WindowY = _file.get_value("Graphics", "WindowY", GRAPHICS.WindowY)
	GRAPHICS.Width = _file.get_value("Graphics", "Width", OS.get_screen_size().x)
	GRAPHICS.Height = _file.get_value("Graphics", "Height", OS.get_screen_size().y)
	GRAPHICS.Maximized = _file.get_value("Graphics", "Maximized", false)
	SOUNDS.FXVolume = _file.get_value("Sounds", "FXVolume", 0.7)
	SOUNDS.MusicVolume = _file.get_value("Sounds", "MusicVolume", 0.8)
	_apply_settings()

func _create_settings():
	var _config = ConfigFile.new()
	_config.set_value("Graphics", "WindowX", GRAPHICS.WindowX)
	_config.set_value("Graphics", "WindowY", GRAPHICS.WindowY)
	_config.set_value("Graphics", "Width", GRAPHICS.Width)
	_config.set_value("Graphics", "Height", GRAPHICS.Height)
	_config.set_value("Graphics", "Maximized", GRAPHICS.Maximized)
	_config.set_value("Sounds", "FXVolume", SOUNDS.FXVolume)
	_config.set_value("Sounds", "MusicVolume", SOUNDS.MusicVolume)
	_config.save(file_path)

func _apply_settings():
	OS.window_position = Vector2(GRAPHICS.WindowX, GRAPHICS.WindowY)
	OS.window_size = Vector2(GRAPHICS.Width, GRAPHICS.Height)
	OS.window_maximized = GRAPHICS.Maximized

func _update_settings():
	GRAPHICS.WindowX = OS.window_position.x
	GRAPHICS.WindowY = OS.window_position.y
	GRAPHICS.Width = OS.window_size.x
	GRAPHICS.Height = OS.window_size.y
	GRAPHICS.Maximized = OS.window_maximized
	
	var _config = ConfigFile.new()
	_config.set_value("Graphics", "WindowX", GRAPHICS.WindowX)
	_config.set_value("Graphics", "WindowY", GRAPHICS.WindowY)
	_config.set_value("Graphics", "Width", GRAPHICS.Width)
	_config.set_value("Graphics", "Height", GRAPHICS.Height)
	_config.set_value("Graphics", "Maximized", GRAPHICS.Maximized)
	_config.set_value("Sounds", "FXVolume", SOUNDS.FXVolume)
	_config.set_value("Sounds", "MusicVolume", SOUNDS.MusicVolume)
	_config.save(file_path)