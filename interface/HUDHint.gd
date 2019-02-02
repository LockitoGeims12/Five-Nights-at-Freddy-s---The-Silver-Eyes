extends Node2D

export(String) var text = "Hint"
export(int) var duration = 5

func _ready():
	AutoLoad.showing_hint = true
	$HintText.text = text
	$AnimationPlayer.playback_speed = 1.0 / duration
	$AnimationPlayer.play("Hide")

func _quit():
	AutoLoad.showing_hint = false