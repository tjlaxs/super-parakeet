class_name Command
extends Node

var _app: String
var _args: PackedStringArray

func _init(app: String, args: Array[String]) -> void:
	_app = app
	_args = PackedStringArray(args)

func perform() -> String:
	var output = []
	OS.execute(_app, _args, output)
	return " ".join(output)
