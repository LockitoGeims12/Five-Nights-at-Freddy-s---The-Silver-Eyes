extends Node2D

export(int) var mode = 0

const velocity = 1000

var direction = Vector2()

func _ready():
	match mode:
		0:
			print("")
		1:
			$Timer.queue_free()
			$Delete.queue_free()

func _process(delta):
	translate(direction * velocity * delta)

func _on_Timer_timeout():
	direction = Vector2(1, 0)

func _on_Delete_timeout():
	queue_free()