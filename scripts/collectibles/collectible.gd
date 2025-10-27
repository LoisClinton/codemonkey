class_name Collectible extends Area2D

# default value
var collectibleName : String

#constructor
func _init():
	self.collectibleName = "Collectible"
	

#runs after node (and all its children) have been added to the scene tree
func _ready() -> void:
	collectible_check(collectibleName)
	set_sprite()

func collectible_check(nameOfCollectible):
	print("I am a: " + nameOfCollectible)

# Polymorphism of collect() an set_sprite() in child classes
func collect() -> void:
	pass
func set_sprite():
	pass

# Signal triggered on body entered
func _on_body_entered(_body: Node2D) -> void:
	collect()
