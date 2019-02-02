extends "res://objects/ObjectEventArea.gd"

func _ready():
	pass

func _on_Area2D_body_entered(body):
	if body == $"/root/ForestMap/YSort/ControllableActor":
		$"/root/ForestMap/GameHUD"._add_hint("A falling tree falls over you")