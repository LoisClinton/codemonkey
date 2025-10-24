class_name UserStory extends Collectible

# Polymorphism in GDScript requires reassigning the variable on initialisation
func _init():
	self.collectibleName = "user_story"
