class_name Task extends Area2D

# default value
var taskName : String

#constructor
func _init():
	self.taskName = "Task"

#runs after node (and all its children) have been added to the scene tree
func _ready() -> void:
	item_check(taskName)

#inhereted
func item_check(nameOfTask):
	print("I am a: " + nameOfTask)

#inhereted
func addItem(nameOfClass):
	print("added a " + nameOfClass + " to the inventory")

#inhereted
func _on_body_entered(_body: Node2D) -> void:
	addItem(taskName)
	queue_free()
