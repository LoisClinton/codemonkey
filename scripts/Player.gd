class_name Player extends CharacterBody2D
@onready var animated_player_sprite = $AnimatedSprite2D

const SPEED: float = 100.0

func _ready() -> void:
	# Defined globally in game_manager.gd
	Global.set_player(self)

func _physics_process(_delta: float) -> void:
	# Get input direction and handle movement.
	var direction_x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	var direction_y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	var direction = Vector2(direction_x,direction_y)
	# FOR DEBUGGING
	# print(direction)
	# print(direction_x)
	# print(direction_y)
	velocity = direction * SPEED
	
	# flip sprite on horizontal axis when going left or right
	if direction_x > 0:
		animated_player_sprite.flip_h = true
	elif direction_x < 0:
		animated_player_sprite.flip_h = false
	
	# change animation if moving
	if direction_x == 0 && direction_y == 0:
		animated_player_sprite.play("idle")
	else:
		animated_player_sprite.play("walk")
	
	# add backwards movement animation here
	
	move_and_slide()
