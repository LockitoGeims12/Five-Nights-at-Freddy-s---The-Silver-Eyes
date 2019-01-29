extends AudioStreamPlayer

export(float) var max_pitch_scale = 0.1 # for plus and minus
export(float) var max_pan = 0.5 # for the two sides

func _on_Timer_timeout():
	var idx = AudioServer.get_bus_index("Crow")
	var panner_effect = AudioServer.get_bus_effect(idx, 0)
	randomize()
	pitch_scale = rand_range(1 - max_pitch_scale, 1 + max_pitch_scale)
	$Timer.wait_time = randi()%80+20
	volume_db = randi()%-20-30
	panner_effect.pan = rand_range(-max_pan, max_pan)
	play()