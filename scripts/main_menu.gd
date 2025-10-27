class_name MainMenu extends Node

const GAME_SCENE_PATH: String = "res://scenes/game.tscn"
@onready var play_btn: Button = $PlayButton
@onready var exit_btn: Button = $ExitButton

func _ready() -> void:
	play_btn.pressed.connect(_on_play_button_pressed)
	exit_btn.pressed.connect(_on_exit_button_pressed)

func _on_play_button_pressed() -> void:
	var ok := get_tree().change_scene_to_file(GAME_SCENE_PATH)
	if ok != OK:
		push_error("Failed to start game scene: %s" % GAME_SCENE_PATH)
	else:
		print("Game started successfully") # added for testing

func _on_exit_button_pressed() -> void:
	print("EXIT PRESSED") # added for testing
	get_tree().quit()
	print("EXITED GAME SUCCESSFULY") # added for testing
