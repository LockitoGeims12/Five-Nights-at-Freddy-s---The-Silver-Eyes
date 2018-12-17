extends Sprite

var LayerSpeed = 700

func _process(delta):
	translate(Vector2(-1, 0) * LayerSpeed * delta)

func _on_check_layer_position():
	if global_position.x <= -1024:
		global_position.x = 1024
	randomize()
	$Timer.wait_time = rand_range(3, 4)