extends StaticBody2D

onready var light: Sprite = $"Light"
onready var light_timer: Timer = $"LightTimer"
onready var light_noise: AudioStreamPlayer2D = $"LightNoise"

func _on_LightTimer_timeout():
	randomize()
	light.visible = !light.visible
	if light.visible:
		light_noise.play()
	light_timer.wait_time = rand_range(0.05, 0.2)
	light_timer.start()
