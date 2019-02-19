extends Node2D

onready var root: Node = $"/root/Menu"
onready var button: Button = $"ButtonText"

var active = false
var ButtonColors = {"LIGHT": Color.white, "MID_DARK": Color(0.5, 0.5, 0.5), "DARK": Color(0.2, 0.2, 0.2)}

func _ready():
	z_index = 150
	if AutoLoad.welcome_shown:
		active = true
	$GameButton.disabled = !active

func _enable():
	active = true
	$GameButton.disabled = false

func _on_Button_mouse_down():
	if active:
		modulate = ButtonColors.DARK

func _on_Button_mouse_up():
	if active:
		modulate = ButtonColors.LIGHT

func _on_GameButton_mouse_entered():
	if active:
		modulate = ButtonColors.MID_DARK
		get_tree().call_group("focus", "_focus_enter")

func _on_GameButton_mouse_exited():
	if active:
		modulate = ButtonColors.LIGHT
		get_tree().call_group("focus", "_focus_exit")