class_name GameManager extends Node

@onready var bug_score = 0
@onready var user_story_score = 0
var player_node: Node
var bug_label_node: Label 
var user_story_label_node: Label 

func set_player(player: Node):
	player_node = player 

# COULD MAKE THESE SINGLETON
func set_bug_label(bug_label: Label)-> void: bug_label_node = bug_label
# COULD MAKE THESE SINGLETON
func set_user_story_label(user_story_label: Label)-> void: user_story_label_node = user_story_label

func add_collectible():
	if bug_label_node:
		bug_label_node.text = "Bugs: " + str(bug_score) + "/10"
	if user_story_label_node:
		user_story_label_node.text = "User Stories: " + str(user_story_score) +"/10"

func add_bug():
	bug_score += 1
	add_collectible()

func add_user_story():
	user_story_score += 1
	add_collectible()

var tasks = []
# signal for inventory update
signal task_updated

func _ready() -> void:
	# starts with 10 slots
	tasks.resize(5)

func add_task():
	task_updated.emit()

func remove_task():
	task_updated.emit()
