extends "res://actors/Actor.gd"

func _input(event):
	if event.is_action_pressed("move_up"):
		direction.y = -1
		State = WALK
		$ActorSprite.animation = "walk_up"
	elif event.is_action_pressed("move_down"):
		direction.y = 1
		State = WALK
		$ActorSprite.animation = "walk_down"
	elif event.is_action_pressed("move_left"):
		direction.x = -1
		State = WALK
		$ActorSprite.animation = "walk_up"
		$ActorSprite.scale.x = -0.1
	elif event.is_action_pressed("move_right"):
		direction.x = 1
		State = WALK
		$ActorSprite.animation = "walk_right"
		$ActorSprite.scale.x = 0.1
	elif event.is_action_released("move_up"):
		direction.y = 0
		$ActorSprite.animation = ""
		State = IDLE
		$ActorSprite.animation = "up"
	elif event.is_action_released("move_down"):
		direction.y = 0
		State = IDLE
		$ActorSprite.animation = "down"
	elif event.is_action_released("move_left"):
		direction.x = 0
		State = IDLE
		$ActorSprite.animation = "right"
		$ActorSprite.scale.x = -0.1
	elif event.is_action_released("move_right"):
		direction.x = 0
		State = IDLE
		$ActorSprite.animation = "right"
		$ActorSprite.scale.x = 0.1