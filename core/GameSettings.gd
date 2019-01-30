extends Node

var file_path = "settings.ini"

# Keys by section
var WINDOW = {
	"X": 0,
	"Y": 0,
	"Width": 1024.0,
	"Height": 768.0,
	"Maximized": true
}
var SOUNDS = {
	"FXVolume": 1.0,
	"MusicVolume": 1.0
}

func _ready():
	var file = File.new()
	if file.file_exists(file_path):
		_load_settings()
	else:
		WINDOW.Width = OS.get_screen_size().x
		WINDOW.Height = OS.get_screen_size().y
		OS.window_size = OS.get_screen_size()
		OS.window_maximized = true
		_create_settings()

func _load_settings():
	var _file = ConfigFile.new()
	_file.load(file_path)
	WINDOW.WindowX = _file.get_value("Window", "X", WINDOW.X)
	WINDOW.WindowY = _file.get_value("Window", "Y", WINDOW.Y)
	WINDOW.Width = _file.get_value("Window", "Width", OS.get_screen_size().x)
	WINDOW.Height = _file.get_value("Window", "Height", OS.get_screen_size().y)
	WINDOW.Maximized = _file.get_value("Window", "Maximized", false)
	SOUNDS.FXVolume = _file.get_value("Sounds", "FXVolume", 1.0)
	SOUNDS.MusicVolume = _file.get_value("Sounds", "MusicVolume", 1.0)
	_apply_settings()

func _create_settings():
	var _config = ConfigFile.new()
	_config.set_value("Window", "X", WINDOW.X)
	_config.set_value("Window", "Y", WINDOW.Y)
	_config.set_value("Window", "Width", WINDOW.Width)
	_config.set_value("Window", "Height", WINDOW.Height)
	_config.set_value("Window", "Maximized", WINDOW.Maximized)
	_config.set_value("Sounds", "FXVolume", SOUNDS.FXVolume)
	_config.set_value("Sounds", "MusicVolume", SOUNDS.MusicVolume)
	_config.save(file_path)

func _apply_settings():
	OS.window_position = Vector2(WINDOW.X, WINDOW.Y)
	OS.window_size = Vector2(WINDOW.Width, WINDOW.Height)
	OS.window_maximized = WINDOW.Maximized
	
	var _fx_bus = AudioServer.get_bus_index("FX")
	var _music_bus = AudioServer.get_bus_index("Music")
	AudioServer.set_bus_volume_db(_fx_bus, General._float2db(SOUNDS.FXVolume))
	AudioServer.set_bus_volume_db(_music_bus, General._float2db(SOUNDS.MusicVolume))

func _update_settings():
	WINDOW.WindowX = OS.window_position.x
	WINDOW.WindowY = OS.window_position.y
	WINDOW.Width = OS.window_size.x
	WINDOW.Height = OS.window_size.y
	WINDOW.Maximized = OS.window_maximized
	
	var _config = ConfigFile.new()
	_config.set_value("Window", "X", WINDOW.X)
	_config.set_value("Window", "Y", WINDOW.Y)
	_config.set_value("Window", "Width", WINDOW.Width)
	_config.set_value("Window", "Height", WINDOW.Height)
	_config.set_value("Window", "Maximized", WINDOW.Maximized)
	_config.set_value("Sounds", "FXVolume", SOUNDS.FXVolume)
	_config.set_value("Sounds", "MusicVolume", SOUNDS.MusicVolume)
	_config.save(file_path)