extends Node2D

enum STATES { IDLE, WALKING, DOING_ACTION, }
var State = STATES.IDLE

var direction = Vector2()
var velocity = 300

func _process(delta):
	translate(direction * velocity * delta)

func _input(event):
	match direction:
		Vector2(0, -1):
			$ActorSprite.animation = "walk_up"
			State = STATES.WALKING
		Vector2(0, 1):
			$ActorSprite.animation = "walk_down"
			State = STATES.WALKING
		Vector2(-1, 0):
			$ActorSprite.animation = "walk_right"
			$ActorSprite.scale.x = -0.1
			State = STATES.WALKING
		Vector2(1, 0):
			$ActorSprite.animation = "walk_right"
			$ActorSprite.scale.x = 0.1
			State = STATES.WALKING