extends Area2D

@export var Speed = 50
@onready var bg_music = $"../BGMusic"
@onready var enemy_hit = $"../EnemyHit"

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


func _on_enemy_body_entered(body):
	hide()
	$"../EnemyHit".play()
	$"../BGMusic".stop()
