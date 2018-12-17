extends Node2D

enum STATES { IDLE, MOVING}

const MAX_VELOCITY = 200

var direction = Vector2()
var velocity = 200

func _process(delta):
	translate(direction * velocity * delta)

func _input(event):
	if event.is_action_pressed("move_up"):
		direction.y = -1
	elif event.is_action_pressed("move_down"):
		direction.y = 1
	elif event.is_action_pressed("move_left"):
		direction.x = -1
	elif event.is_action_pressed("move_right"):
		direction.x = 1
	elif event.is_action_released("move_up") or event.is_action_released("move_down"):
		direction.y = 0
	elif event.is_action_released("move_left") or event.is_action_released("move_right"):
		direction.x = 0