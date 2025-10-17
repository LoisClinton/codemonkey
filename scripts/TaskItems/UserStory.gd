class_name UserStory extends Task

# Abstraction in GDScript requires reassigning the variable on initialisation
func _init():
	self.taskName = "User Story"
