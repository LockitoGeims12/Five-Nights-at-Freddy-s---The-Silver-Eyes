extends Node

# This app shows the current game development progress based on GitHub issues
# So it isn't 100% precise and can variate too much

var closed_issues = 3
var all_issues = 22

func _ready():
	var percent = round((closed_issues / float(all_issues)) * 100)
	$label.text = "Development Progress: " + str(percent) + "%\n\n" + "Closed issues: " + str(closed_issues) + "\nTotal issues: " + str(all_issues)
	OS.set_window_title("The Silver Eyes - Development Progress Application " + str(percent) + "%")