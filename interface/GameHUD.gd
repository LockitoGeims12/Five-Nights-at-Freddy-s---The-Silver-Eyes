extends Node2D

func _ready():
	pass

func _physics_process(delta):
	global_position = $"/root/ForestMap/YSort/ControllableActor/FollowPlayer".global_position