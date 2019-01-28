extends Node

var credits_path = "res://texts/used/credits.txt"

func _ready():
	var file = File.new()
	file.open(credits_path, File.READ)
	$CreditsNode2D/CreditsText.text = file.get_as_text()
	file.close()

func _input(event):
	if event.is_action_pressed("escape"):
		get_tree().change_scene("res://interface/Menu.tscn")

func _back_to_menu():
	get_tree().change_scene("res://interface/Menu.tscn")