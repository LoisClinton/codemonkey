class_name TechStory extends UserStory

# Polymorphism in GDScript requires reassigning the variable on initialisation
func _init():
	self.collectibleName = "tech_story"

func set_sprite():
	animated_sprite.play("blue")
