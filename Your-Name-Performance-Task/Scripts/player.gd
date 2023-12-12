extends Area2D

@export var Speed = 50

func _process(velocity):
	velocity = Vector2.ZERO
	if velocity.length() > 0:
		velocity.normalized()
	
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
		
	position += velocity * Speed
