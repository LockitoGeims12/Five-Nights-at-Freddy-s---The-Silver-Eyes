extends Node

var lang = OS.get_locale()
var available_langs = ["en", "pt"]

func _ready():
	if not lang in available_langs:
		lang = "en"