extends AudioStreamPlayer

func _ready():
	# starts the current music
	play()
	$PlayerTimer.start()

func _check():
	# check if the music is playing
	
	if !playing:
		stream = AudioStream.new()
		play()