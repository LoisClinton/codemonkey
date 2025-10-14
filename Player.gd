extends CharacterBody2D

const SPEED: float = 100.0

func _physics_process(delta: float) -> void:
	# Get the input direction and handle the movementn.
	# Good practice to replace UI actions with custom actions.
	var direction = Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	)
	
	print(direction)
	velocity = direction * SPEED
	

	move_and_slide()
