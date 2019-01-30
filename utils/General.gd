extends Node

func _float2db(flt: float):
	var _db = (flt * 60) - 60
	return _db