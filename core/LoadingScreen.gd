extends Node2D

onready var root = get_parent()
onready var tween = $"Tween"

var resource_id: float = 1
var resources: float = 20

var resources_to_load: Dictionary = {}

var progress: float = 0

func _ready():
	$"Poll".start()

func _on_Poll_timeout():
	if resource_id == resources:
		queue_free()
	else:
		resource_id += 1
	progress = float(resource_id) / resources
	update()

func _draw():
	draw_rect(Rect2(30, 728, progress * 964, 4), Color.white)