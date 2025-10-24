extends Node

var game_scene = preload("res://scenes/game.tscn")
var main_menu_scene = preload("res://scenes/main_menu.tscn")
var menu_instance = main_menu_scene.instantiate()
var game_instance = game_scene.instantiate()

func _ready() -> void:
	add_child(menu_instance)
	print("WAITING")
	remove_child(menu_instance)
	add_child(game_instance)
