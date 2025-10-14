extends CharacterBody2D
@onready var animated_player_sprite = $AnimatedSprite2D

const SPEED: float = 100.0
func _physics_process(delta: float) -> void:
	
	# Get input direction and handle movement.
	var direction_x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	var direction_y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	var direction = Vector2(direction_x,direction_y)
	
	# FOR DEBUGGING
	# print(direction)
	# print(direction_x)
	# print(direction_y)
	velocity = direction * SPEED
	
	move_and_slide()
