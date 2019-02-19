extends Node2D

var game_preloader = preload("res://core/GamePreloader.tscn").instance()

onready var root = get_parent()
onready var tween: Tween = $"Tween"
onready var poll: Timer = $"Poll"

var progress: float = 0
var resource_id: float = 1
var resources: float = 2

var to_load: Dictionary = {}

signal load_finished

func _ready():
	resources = to_load.size() - 1
	
	root.add_child(game_preloader)
	connect("load_finished", self, "_on_load_finished")
	poll.start()

func _on_Poll_timeout():
	if resource_id == resources:
		poll.queue_free()
		emit_signal("load_finished")
	else:
		var array = to_load.keys()
		var res_name = array[resource_id]
		var res_path = to_load.get(res_name)
		game_preloader.add_resource(res_name, load(res_path))
		resource_id += 1
	progress = float(resource_id) / float(resources + 1)
	update()

func _on_load_finished():
	queue_free()

func _draw():
	draw_rect(Rect2(30, 728, progress * 964, 4), Color.white)