extends Control

@onready var status: TextEdit = $TextEdit

func _ready():
	var app = "e:\\program files\\Git\\cmd\\git.exe"
	var status_args: Array[String] = [
		"status"
	]
	var cmd = Command.new(app, status_args)
	var text = cmd.perform()
	status.text = text 
