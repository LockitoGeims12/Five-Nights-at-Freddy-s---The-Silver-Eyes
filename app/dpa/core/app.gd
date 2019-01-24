extends Node

# This app shows the current game development progress based on GitHub issues
# So it isn't 100% precise and can variate too much

export (float) var closed_issues = 3
export (float) var all_issues = 21

func _ready():
	var percent = round((closed_issues / float(all_issues)) * 100)
	$label.text = "Development Progress: " + str(percent) + "%"
	OS.set_window_title("The Silver Eyes - Development Progress Application " + str(percent) + "%")