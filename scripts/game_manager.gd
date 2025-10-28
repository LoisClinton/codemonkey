class_name GameManager extends Node

const TARGET := 10
var player_node: Node
var bug_label_node: Label 
var user_story_label_node: Label 
const WIN_GAME_SCENE_PATH: String = "res://scenes/win_game_screen.tscn"
@onready var _bug_score = 0
@onready var _user_story_score = 0

func set_player(player: Node):
	player_node = player 

func get_bug_score() -> int: return _bug_score
func get_user_story_score() -> int: return _user_story_score
func set_bug_label(bug_label: Label)-> void: bug_label_node = bug_label
func set_user_story_label(user_story_label: Label)-> void: user_story_label_node = user_story_label

func add_collectible():
	if bug_label_node:
		bug_label_node.text = "Bugs: " + str(_bug_score) + "/10"
	if user_story_label_node:
		user_story_label_node.text = "User Stories: " + str(_user_story_score) +"/10"

func add_bug():
	if _bug_score < TARGET:
		_bug_score += 1
		add_collectible()
	_check_win()

func add_user_story():
	if _user_story_score  < TARGET:
		_user_story_score += 1
		add_collectible()
	_check_win()
	
func _check_win() -> void:
	if _bug_score >= TARGET and _user_story_score >= TARGET:
		print("YOU WIN")
		get_tree().change_scene_to_file(WIN_GAME_SCENE_PATH)
