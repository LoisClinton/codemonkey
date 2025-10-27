class_name BusinessStory extends UserStory

# Polymorphism in GDScript requires reassigning the variable on initialisation
func _init():
	self.collectibleName = "business_story"

func set_sprite():
	animated_sprite.play("red")
