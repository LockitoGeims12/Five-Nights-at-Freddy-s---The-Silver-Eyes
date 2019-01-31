extends Node2D

func _ready():
	$Label.text = str(GameState.game_state.PLAYER_NAME) + " Lv. " + str(GameState.game_state.PLAYER_LEVEL) + "\nXP: " + str(GameState.game_state.PLAYER_XP)