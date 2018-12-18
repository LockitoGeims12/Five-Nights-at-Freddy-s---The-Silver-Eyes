extends Label

func _ready():
	pass

func _on_Area2D_mouse_entered():
	$TitleAnimation.play("FocusIn")

func _on_Area2D_mouse_exited():
	$TitleAnimation.play("FocusOut")