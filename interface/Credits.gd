extends Node

var CreditsSpeed = 20

func _process(delta):
	$CreditsText.rect_global_position.y -= CreditsSpeed * delta