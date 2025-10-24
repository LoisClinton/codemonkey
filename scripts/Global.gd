extends Node

@onready var bug_score = 0
@onready var user_story_score = 0
@onready var bug_label = $"Player/Camera2D/BugLabel"
@onready var user_story_label = $"Player/Camera2D/UserStoryLabel"

func add_collectible():
	bug_label.text = "Bugs: " + str(bug_score) + "/10"
	user_story_label.text = "User Stories: " + str(user_story_score) +"/10"
	
func add_bug():
	bug_score += 1
	add_collectible()
	
func add_user_story():
	user_story_score += 1
	add_collectible()
