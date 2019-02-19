extends Node

var loading_screen = preload("res://core/LoadingScreen.tscn").instance()
var game_preloader: ResourcePreloader

func _ready():
	loading_screen.to_load = {
		"SkyBackground": "res://interface/SkyBackground.tscn",
		"ForestLayer": "res://interface/ForestLayer.tscn",
		"TreeLayer2": "res://interface/TreeLayer2.tscn",
		"TreeLayer1": "res://interface/TreeLayer1.tscn",
		"RoadLayer": "res://interface/RoadLayer.tscn",
		"MenuCar": "res://interface/MenuCar.tscn",
		"Occular": "res://interface/Occular.tscn",
		"GameTitle": "res://interface/GameTitle.tscn",
		"NewGameButton": "res://interface/NewGameButton.tscn",
		"OptionsButton": "res://interface/OptionsButton.tscn",
		"ExtrasButton": "res://interface/ExtrasButton.tscn",
		"QuitButton": "res://interface/QuitButton.tscn",
		"VersionIndicator": "res://interface/VersionIndicator.tscn",
		"MenuPlayerData": "res://interface/MenuPlayerData.tscn",
		"CarEngineSound": "res://interface/CarEngineSound.tscn",
		"CrowSound": "res://interface/CrowSound.tscn",
		"ForestAmbientSound": "res://interface/ForestAmbientSound.tscn",
		"MenuTheme": "res://interface/MenuTheme.tscn",
		"ForestWindSound": "res://objects/ForestWindSound.tscn",
		"Rain": "res://particles/Rain.tscn"
	}
	add_child(loading_screen)
	loading_screen.connect("load_finished", self, "_on_load_finished")
	set_process_input(false)

func _on_load_finished():
	game_preloader = $"/root/Menu/GamePreloader"
	
	var SkyBackground = game_preloader.get_resource("SkyBackground")
	var ForestLayer = game_preloader.get_resource("ForestLayer")
	var TreeLayer2 = game_preloader.get_resource("TreeLayer2")
	var TreeLayer1 = game_preloader.get_resource("TreeLayer1")
	var RoadLayer = game_preloader.get_resource("RoadLayer")
	
	if not AutoLoad.is_welcome_shown():
		var welcome_screen = (AutoLoad.RESOURCES.WELCOME_SCREEN as PackedScene).instance()
		add_child(welcome_screen)
		AutoLoad.welcome_shown = true

func _input(event):
	# NOTE: this input method is temporary
	if event is InputEventJoypadButton:
		if Input.is_joy_button_pressed(0, JOY_SONY_TRIANGLE):
			$"NewGameButton"._on_Button_mouse_down()
		elif Input.is_joy_button_pressed(0, JOY_SONY_CIRCLE):
			$"OptionsButton"._on_Button_mouse_down()
		elif Input.is_joy_button_pressed(0, JOY_SONY_X):
			$"ExtrasButton"._on_Button_mouse_down()
		elif Input.is_joy_button_pressed(0, JOY_SONY_SQUARE):
			$"QuitButton"._on_Button_mouse_down()

func new_game():
	get_tree().change_scene_to(AutoLoad.RESOURCES.FOREST_MAP)