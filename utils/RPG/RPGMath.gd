extends Node

func _ready():
	pass

func _damage(attack, defense):
	var damage = attack * ( 100.0 / (100.0 + defense))
	return damage