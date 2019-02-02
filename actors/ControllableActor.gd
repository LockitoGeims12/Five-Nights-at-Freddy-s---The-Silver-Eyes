extends "res://actors/Actor.gd"

func _input(event):
	if can_move:
		if event.is_action_pressed("MOVE_UP"):
			direction.y = -1
			state = STATES.WALKING
			$ActorSprite.animation = "walk_up"
		elif event.is_action_pressed("MOVE_DOWN"):
			direction.y = 1
			state = STATES.WALKING
			$ActorSprite.animation = "walk_down"
		elif event.is_action_pressed("MOVE_LEFT"):
			direction.x = -1
			state = STATES.WALKING
			$ActorSprite.animation = "walk_up"
			$ActorSprite.scale.x = -0.1
		elif event.is_action_pressed("MOVE_RIGHT"):
			direction.x = 1
			state = STATES.WALKING
			$ActorSprite.animation = "walk_right"
			$ActorSprite.scale.x = 0.1
		elif event.is_action_released("MOVE_UP"):
			direction.y = 0
			$ActorSprite.animation = ""
			state = STATES.IDLE
			$ActorSprite.animation = "up"
		elif event.is_action_released("MOVE_DOWN"):
			direction.y = 0
			state = STATES.IDLE
			$ActorSprite.animation = "down"
		elif event.is_action_released("MOVE_LEFT"):
			direction.x = 0
			state = STATES.IDLE
			$ActorSprite.animation = "right"
			$ActorSprite.scale.x = -0.1
		elif event.is_action_released("MOVE_RIGHT"):
			direction.x = 0
			state = STATES.IDLE
			$ActorSprite.animation = "right"
			$ActorSprite.scale.x = 0.1
	else:
		$ActorSprite.animation = "right"
		$ActorSprite.scale.x = 0.1
		direction = Vector2(0, 0)
		state = STATES.IDLE