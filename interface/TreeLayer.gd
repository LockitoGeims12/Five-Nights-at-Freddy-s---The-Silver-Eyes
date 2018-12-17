extends Sprite

export(int) var LayerSpeed = 200
export(Vector2) var TimerRange = Vector2(3, 4)
var ThisTimer = Timer.new()

func _ready():
	randomize()
	ThisTimer.connect("timeout", self, "_on_check_layer_position")
	_randomize()
	ThisTimer.one_shot = false
	ThisTimer.autostart = true
	add_child(ThisTimer)

func _on_check_layer_position():
	if global_position.x <= -1024:
		global_position.x = 1024
	_randomize()

func _process(delta):
	translate(Vector2(-1, 0) * LayerSpeed * delta)

func _randomize():
	randomize()
	ThisTimer.wait_time = rand_range(TimerRange.x, TimerRange.y)