extends Node

var lang = OS.get_locale() setget set_lang, get_lang
var available_langs = ["en", "pt"]

func _ready():
	if not lang in available_langs:
		set_lang("en")

func set_lang(new: String):
	lang = new

func get_lang() -> String:
	return lang
