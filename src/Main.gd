extends Control

@onready var status: TextEdit = $TextEdit

var git: Git

func _ready():
	var app = "e:\\program files\\Git\\cmd\\git.exe"
	git = Git.new(app)
	
	# TODO:
	#  - basic git flow
	#    - git status
	#    - git add .
	#    - git commit -m "plop"
	#    - git push
	#  - bonus
	#    - git pull
	
	# Git status

	var text = git.status()
	status.text = text


# React to clicks

func _on_changed_files_pressed():
	status.text = git.status_porcelain()

func _on_add_all_pressed():
	status.text = git.status()

func _on_commit_pressed():
	status.text = git.status()

func _on_push_pressed():
	status.text = git.status()
