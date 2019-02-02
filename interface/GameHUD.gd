extends Node2D

func _physics_process(delta):
	global_position = $"/root/ForestMap/YSort/ControllableActor/FollowPlayer".global_position

func _add_hint(text: String):
	if not AutoLoad.showing_hint:
		var _myClass = AutoLoad.RESOURCES.HUDHINT
		var _myInstance = _myClass.instance()
		_myInstance.local_position.y = 256
		_myInstance.text = text
		add_child(_myInstance)