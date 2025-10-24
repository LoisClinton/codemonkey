class_name Collectible extends Area2D

# default value
var collectibleName : String

#constructor
func _init():
	self.collectibleName = "Collectible"

#runs after node (and all its children) have been added to the scene tree
func _ready() -> void:
	collectible_check(collectibleName)

#inhereted
func collectible_check(nameOfCollectible):
	print("I am a: " + nameOfCollectible)

#inhereted
func addCollectible(nameOfClass):
	print("added a " + nameOfClass + " to the inventory")
	if (nameOfClass == "bug"):
		Global.add_bug()
		queue_free()
	elif (nameOfClass == "user_story"):
		Global.add_user_story()
		queue_free()

#inhereted
func _on_body_entered(_body: Node2D) -> void:
	addCollectible(collectibleName)
