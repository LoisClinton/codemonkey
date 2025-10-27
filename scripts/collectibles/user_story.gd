class_name UserStory extends Collectible

@onready var animated_sprite = $CollectibleSprite
# Polymorphism in GDScript requires reassigning the variable on initialisation
func _init():
	self.collectibleName = "user_story"

# for debugging
func print_name():
	print("added a " + collectibleName + " to the inventory")
	
func collect() -> void:
	print_name()
	Global.add_user_story()
	queue_free()
