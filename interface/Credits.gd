extends Node

func _ready():
	var file = File.new()
	file.open("res://texts/credits.txt", File.READ)
	$CreditsNode2D/CreditsText.text = file.get_as_text()
	file.close()

func _input(event):
	if event.is_action_pressed("escape"):
		_backToMenu()

func _backToMenu():
	get_tree().change_scene("res://interface/Menu.tscn")