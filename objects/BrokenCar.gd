extends StaticBody2D

func _on_LightTimer_timeout():
	randomize()
	$Light.visible = !$Light.visible
	$LightTimer.wait_time = rand_range(0.05, 0.2)
	$LightTimer.start()