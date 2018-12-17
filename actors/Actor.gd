extends Node2D

enum STATES { IDLE, WALKING, DOING_ACTION, }
enum ACTIONS { DIE }
var State = STATES.IDLE

const MAX_VELOCITY = 300

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

func _do_action(action):
	match action:
		ACTIONS.DIE:
			queue_free()