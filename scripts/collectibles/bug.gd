class_name Bug extends Collectible

# Polymorphism in GDScript requires reassigning the variable on initialisation
func _init():
	self.collectibleName = "bug"

func collect() -> void:
	print("added a " + collectibleName + " to the inventory")
	Global.add_bug()
	queue_free()
