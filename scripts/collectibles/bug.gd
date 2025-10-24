class_name Bug extends Collectible

# Polymorphism in GDScript requires reassigning the variable on initialisation
func _init():
	self.collectibleName = "bug"
