extends "res://objects/ObjectEventArea.gd"

func _ready():
	pass

func _on_Area2D_body_entered(body):
	if body == $"/root/ForestMap/YSort/ControllableActor":
		$"/root/ForestMap/GameHUD"._add_hint(Lang.lang.FALLING_TREE_MESSAGE)
		$"/root/ForestMap/YSort/ControllableActor".can_move = false