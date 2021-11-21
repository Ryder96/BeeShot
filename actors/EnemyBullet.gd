extends RigidBody2D

var bulletImage = preload("res://assets/bullet_enemy_01.png")

export var speed = 100



# Called when the node enters the scene tree for the first time.
func _ready():
	$Sprite.rotate(PI)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
