extends Node2D

onready var label: Label = $"Label"

func _ready():
	label.text = str(GameState.game_state.PLAYER_NAME) + " Lv. " + str(GameState.game_state.PLAYER_LEVEL) + "\nXP: " + str(GameState.game_state.PLAYER_XP)
