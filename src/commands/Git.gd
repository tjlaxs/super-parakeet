class_name Git
extends Node

var _app: String

# Register git path in constructor
func _init(app: String) -> void:
	_app = app

# Run git with args
func run(args: Array[String]) -> String:
	var output = []
	OS.execute(_app, PackedStringArray(args), output)
	return " ".join(output)

# Print default status
func status() -> String:
	return run(["status"])

# Get current branch from HEAD
func current_branch() -> String:
	return run([
		"rev-parse",
		"--abbrev-ref",
		"HEAD"
	])

# Get all differences between index file and current HEAD
func status_porcelain() -> String:
	return run([
		"status",
		"--porcelain"
	])

# Get changed files that are staged
func diff_name_only() -> String:
	return run([
		"diff",
		"--name-only"
	])

# Get patch for file
func diff(s: String):
	return run(["diff", s])
