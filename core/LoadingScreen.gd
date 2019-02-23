extends Node2D

var GamePreloader: ResourcePreloader = preload("res://core/GamePreloader.tscn").instance()
var game_preloader: ResourcePreloader

onready var root: Node = $"/root/Menu"
onready var poll: Timer = $"Poll"

var progress: float = 0
var resource_id: int = 1
var resources: int = 25

signal load_finished

func _ready():
	root.add_child(GamePreloader)
	game_preloader = $"/root/Menu/GamePreloader"

	connect("load_finished", self, "_on_load_finished")
	poll.start()

func _on_Poll_timeout():
	if resource_id == resources + 1:
		poll.queue_free()
		emit_signal("load_finished")
	else:
		load_menu()

func load_menu():
	match resource_id:
		1:
			add("SkyBackground", "res://interface/SkyBackground.tscn")
		2:
			add("ForestLayer", "res://interface/ForestLayer.tscn")
		3:
			add("TreeLayer2", "res://interface/TreeLayer2.tscn")
		4:
			add("TreeLayer1", "res://interface/TreeLayer1.tscn")
		5:
			add("RoadLayer", "res://interface/RoadLayer.tscn")
		6:
			add("MenuCar", "res://actors/MenuCar.tscn")
		7:
			add("Occular", "res://interface/Occular.tscn")
		8:
			add("GameTitle", "res://interface/GameTitle.tscn")
		9:
			add("NewGameButton", "res://interface/NewGameButton.tscn")
		10:
			add("OptionsButton", "res://interface/OptionsButton.tscn")
		11:
			add("ExtrasButton", "res://interface/ExtrasButton.tscn")
		12:
			add("QuitButton", "res://interface/QuitButton.tscn")
		13:
			add("VersionIndicator", "res://interface/VersionIndicator.tscn")
		14:
			add("MenuPlayerData", "res://objects/MenuPlayerData.tscn")
		15:
			add("CarEngineSound", "res://interface/CarEngineSound.tscn")
		16:
			add("CrowSound", "res://interface/CrowSound.tscn")
		17:
			add("ForestAmbientSound", "res://interface/ForestAmbientSound.tscn")
		18:
			add("MenuTheme", "res://interface/MenuTheme.tscn")
		19:
			add("ForestWindSound", "res://objects/ForestWindSound.tscn")
		20:
			add("Rain", "res://particles/Rain.tscn")
		21:
			add("WelcomeScreen", "res://interface/WelcomeScreen.tscn")
		22:
			add("Options", "res://interface/Options.tscn")
		23:
			add("Extras", "res://interface/Extras.tscn")

func load_forest():
	match resource_id:
		1:
			add("ForestMap", "res://maps/ForestMap.tscn")
		2:
			add("HUDHint", "res://interface/HUDHint.tscn")

func add(res_name: String, res_path: String):
	game_preloader.add_resource(res_name, load(res_path))
	resource_id += 1
	progress = float(resource_id) / float(resources)
	update()

func _on_load_finished():
	queue_free()

func _draw():
	draw_rect(Rect2(30, 728, progress * 964, 4), Color.white)
