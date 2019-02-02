extends Node

func _ready():
	pass

func _pause():
	get_tree().paused = true

func _unpause():
	get_tree().paused = false