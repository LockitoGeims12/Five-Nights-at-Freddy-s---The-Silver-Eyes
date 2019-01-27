extends Node

# this app shows the current game development progress based on GitHub issues and commits
# so it isn't 100% precise and can variate too much

const commits = 70
const estimated_commits = 750
const closed_issues = 15
const all_issues = 41

func _ready():
	var percent = round((round((closed_issues / float(all_issues)) * 100) + round((commits / float(estimated_commits)) * 100)) / 2)
	$label.text = "Development Progress: " + str(percent) + "%\n\n" + "Closed issues: " + str(closed_issues) + "\nTotal issues: " + str(all_issues)
	OS.set_window_title("The Silver Eyes - Development Progress Application " + str(percent) + "%")