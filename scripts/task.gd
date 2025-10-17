extends Area2D

func _on_body_entered(body: Node2D) -> void:
	print("I'm a story")
	queue_free()
	
