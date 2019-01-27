extends Node

# sets the player data to the Label node once it's loaded

func _ready():
	$Label.text = str(GameState.STATE.PLAYER_NAME) + " Lv. " + str(GameState.STATE.PLAYER_LEVEL)