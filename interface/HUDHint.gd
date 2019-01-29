extends Node2D

export(int) var duration = 5

func _ready():
	$AnimationPlayer.playback_speed = 1.0 / duration
	$AnimationPlayer.play("Hide")

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "Hide":
		queue_free()