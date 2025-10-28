class_name GameManager extends Node

#variables
const TARGET: int = 10
const WIN_GAME_SCENE_PATH: String = "res://scenes/win_game_screen.tscn"
var player_node: Node
var bug_label_node: Label
var user_story_label_node: Label
var _bug_score: int = 0
var _user_story_score: int = 0
var _has_won: bool = false

#getters & setters
func set_player(player: Node) -> void:
	player_node = player

func set_bug_label(bug_label: Label) -> void:
	bug_label_node = bug_label

func set_user_story_label(user_story_label: Label) -> void:
	user_story_label_node = user_story_label

func get_bug_score() -> int:
	return _bug_score

func get_user_story_score() -> int:
	return _user_story_score

#mutators
func add_bug() -> void:
	if _bug_score < TARGET:
		_bug_score += 1
		_update_hud_and_check()

func add_user_story() -> void:
	if _user_story_score < TARGET:
		_user_story_score += 1
		_update_hud_and_check()

#internals
func _update_hud_and_check() -> void:
	if is_instance_valid(bug_label_node):
		bug_label_node.text = "Bugs: %d/%d" % [_bug_score, TARGET]
	if is_instance_valid(user_story_label_node):
		user_story_label_node.text = "User Stories: %d/%d" % [_user_story_score, TARGET]
	_check_win()

func _check_win() -> void:
	if _has_won:
		return
	if _bug_score >= TARGET and _user_story_score >= TARGET:
		_has_won = true
		print("YOU WIN")
		get_tree().call_deferred("change_scene_to_file", WIN_GAME_SCENE_PATH)
