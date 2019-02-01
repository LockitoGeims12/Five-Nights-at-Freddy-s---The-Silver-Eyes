extends KinematicBody2D

enum STATES { IDLE, WALKING, DOING_ACTION, }
var state = STATES.IDLE

var direction = Vector2()
var velocity = 200

func _physics_process(delta):
	move_and_collide(direction * velocity * delta)

func _input(event):
	if direction.y == -1:
		$ActorSprite.animation = "walk_up"
		state = STATES.WALKING
	elif direction.y == 1:
		$ActorSprite.animation = "walk_down"
		state = STATES.WALKING
	elif direction.x == -1:
		$ActorSprite.animation = "walk_right"
		$ActorSprite.scale.x = -0.1
		state = STATES.WALKING
	elif direction.x == 1:
		$ActorSprite.animation = "walk_right"
		$ActorSprite.scale.x = 0.1
		state = STATES.WALKING