extends Node2D

export(int) var LayerSpeed = 200
export(Vector2) var TimerRange = Vector2(0, 0)

func _ready():
	pass

func _on_check_layer_position():
	if global_position.x <= -1024:
		global_position.x = 1024
	randomize()
	$Timer.wait_time = rand_range(TimerRange.x, TimerRange.y)