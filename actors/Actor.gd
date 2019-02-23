extends KinematicBody2D

enum STATES { IDLE, WALKING, DOING_ACTION, }
var state: int = STATES.IDLE

var direction: Vector2 = Vector2()
var velocity: float = 200
var can_move: bool = true

func _physics_process(delta):
	if can_move:
		move_and_slide(direction * velocity)

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
