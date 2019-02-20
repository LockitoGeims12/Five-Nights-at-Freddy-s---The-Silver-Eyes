extends Node

var loading_screen = preload("res://core/LoadingScreen.tscn").instance()
var preloader: ResourcePreloader

func _ready():
	add_child(loading_screen)
	loading_screen.connect("load_finished", self, "_on_load_finished")
	set_process_input(false)

func _on_load_finished():
	preloader = $"/root/Menu/GamePreloader"
	
	var SkyBackground: Node = preloader.get_resource("SkyBackground").instance()
	var ForestLayer: Node = preloader.get_resource("ForestLayer").instance()
	var TreeLayer2: Node = preloader.get_resource("TreeLayer2").instance()
	var TreeLayer1: Node = preloader.get_resource("TreeLayer1").instance()
	var RoadLayer: Node = preloader.get_resource("RoadLayer").instance()
	var MenuCar: Node = preloader.get_resource("MenuCar").instance()
	var Occular: Node = preloader.get_resource("Occular").instance()
	var GameTitle: Node = preloader.get_resource("GameTitle").instance()
	var NewGameButton: Node = preloader.get_resource("NewGameButton").instance()
	var OptionsButton: Node = preloader.get_resource("OptionsButton").instance()
	var ExtrasButton: Node = preloader.get_resource("ExtrasButton").instance()
	var QuitButton: Node = preloader.get_resource("QuitButton").instance()
	var VersionIndicator: Node = preloader.get_resource("VersionIndicator").instance()
	var MenuPlayerData: Node = preloader.get_resource("MenuPlayerData").instance()
	
	add_child(SkyBackground)
	add_child(ForestLayer)
	add_child(TreeLayer2)
	add_child(TreeLayer1)
	add_child(RoadLayer)
	add_child(MenuCar)
	add_child(Occular)
	add_child(GameTitle)
	add_child(NewGameButton)
	add_child(OptionsButton)
	add_child(ExtrasButton)
	add_child(QuitButton)
	add_child(VersionIndicator)
	add_child(MenuPlayerData)
	
	if not AutoLoad.is_welcome_shown():
		var welcome_screen = (preloader.get_resource("WelcomeScreen") as PackedScene).instance()
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