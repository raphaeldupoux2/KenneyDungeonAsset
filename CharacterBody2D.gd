extends CharacterBody2D

const SPEED = 2

func _physics_process(delta):
	player_movement(delta)


func player_movement(delta):
	var velocity = Vector2.ZERO # The player's movement vector.
	if Input.is_action_pressed(&"move_right"):
		velocity.x += 1
	if Input.is_action_pressed(&"move_left"):
		velocity.x -= 1
	if Input.is_action_pressed(&"move_down"):
		velocity.y += 1
	if Input.is_action_pressed(&"move_up"):
		velocity.y -= 1

	if velocity.length() > 0:
		velocity = velocity.normalized() * SPEED

		#$AnimatedSprite2D.play()
	#else:
		#$AnimatedSprite2D.stop()
	move_and_collide(velocity)
	#position += velocity * delta
	#position = position.clamp(Vector2.ZERO, screen_size)

func _unhandled_input(event):
	if Input.is_action_pressed("ui_accept"):
		DialogueManager.show_example_dialogue_balloon(load("res://addons/dialogue_manager/dialogue.dialogue"))
		return
