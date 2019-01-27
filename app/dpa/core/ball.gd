extends Node2D

onready var tween = get_node("Tween")
var dir = Vector2()

func _ready():
	randomize()
	var r = rand_range(0.5, 1)
	var g = rand_range(0.5, 1)
	var b = rand_range(0.5, 1)
	modulate = Color(r, g, b, 0.1)
	_randomize()

func _process(delta):
	if global_position.x < 100 or global_position.y < 100 or global_position.x > 700 or global_position.y > 500:
		dir = Vector2(400, 300)
	
	tween.interpolate_property(self, "position", position, dir, 1, Tween.TRANS_QUAD, Tween.EASE_IN)
	tween.start()
	update()

func _draw():
	draw_circle(global_position, 10, Color(1, 1, 1))

func _on_randomizer_timeout():
	_randomize()

func _randomize():
	randomize()
	dir.x = randi()%600-200
	dir.y = randi()%400-200