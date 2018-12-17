extends Node2D

enum { IDLE, WALK}
var State = IDLE

const MAX_VELOCITY = 300

var direction = Vector2()
var velocity = 300

func _process(delta):
	translate(direction * velocity * delta)

func _input(event):
	match direction:
		Vector2(0, -1):
			$ActorSprite.animation = "walk_up"
			State = WALK
		Vector2(0, 1):
			$ActorSprite.animation = "walk_down"
			State = WALK
		Vector2(-1, 0):
			$ActorSprite.animation = "walk_right"
			$ActorSprite.scale.x = -0.1
			State = WALK
		Vector2(1, 0):
			$ActorSprite.animation = "walk_right"
			$ActorSprite.scale.x = 0.1
			State = WALK