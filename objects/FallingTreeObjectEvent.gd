extends "res://objects/ObjectEventArea.gd"

onready var controllable_actor = $"/root/ForestMap/YSort/ControllableActor"
onready var game_hud: Node = $"/root/ForestMap/GameHUD"

func _on_Area2D_body_entered(body):
	if body == controllable_actor:
		game_hud._add_hint(Lang.lang.FALLING_TREE_MESSAGE)
		controllable_actor.can_move = false
