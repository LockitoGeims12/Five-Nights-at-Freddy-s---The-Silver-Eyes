extends Node2D

export(String) var text = "Hint"
export(int) var duration = 5

func _ready():
	$HintText.text = text
	$AnimationPlayer.playback_speed = 1.0 / duration
	$AnimationPlayer.play("Hide")

func _process(delta):
	update()

func _draw():
	draw_rect(Rect2(0, 600, 1024, 700),Color(0, 0, 0, 0.5))