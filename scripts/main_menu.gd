class_name MainMenu extends Node

var play_btn: Button
var exit_btn: Button
const GAME_SCENE_PATH: String = "res://scenes/game.tscn"

func _ready() -> void:
	# find these nodes only if they exist in the scene
	play_btn = get_node_or_null("PlayButton") as Button
	exit_btn = get_node_or_null("ExitButton") as Button

	if play_btn:
		play_btn.pressed.connect(_on_play_button_pressed)
	if exit_btn:
		exit_btn.pressed.connect(_on_exit_button_pressed)

func _on_play_button_pressed() -> void:
	var ok := get_tree().change_scene_to_file(GAME_SCENE_PATH)
	if ok != OK:
		print("Failed to start game scene: %s" % GAME_SCENE_PATH)  # added for testing
	else:
		print("Game started successfully") # added for testing

func _on_exit_button_pressed() -> void:
	print("EXIT PRESSED") # added for testing
	get_tree().quit()
	print("EXITED GAME SUCCESSFULY") # added for testing
