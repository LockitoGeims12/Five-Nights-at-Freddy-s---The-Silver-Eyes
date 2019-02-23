extends AudioStreamPlayer

onready var player_timer: Timer = $"PlayerTimer"

func _ready():
	play()
	player_timer.start()

func _check():
	if !playing:
		stream = AudioStream.new()
		play()
