extends RigidBody2D

var _bullet = preload("res://actors/EnemyBullet.tscn")
var speed = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	rotate(PI)
	position = Vector2(100,100)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Vector2()
		# Move the player
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if velocity.length() > 1:
		velocity = velocity.normalized()

	position += velocity * speed * delta
#	pass


func _on_Canon_shoot_timeout():
	var bullet = _bullet.instance()
	bullet.position = $Cannon.global_position
	bullet.apply_impulse(Vector2(100,100),Vector2(0,bullet.speed))
	get_tree().get_root().add_child(bullet)
