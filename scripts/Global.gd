extends Node

var tasks = []

# signal for inventory update
signal task_updated

func _ready() -> void:
	# starts with 10 slots
	tasks.resize(30)
	
func add_task():
	task_updated.emit()

func remove_task():
	task_updated.emit()
	
