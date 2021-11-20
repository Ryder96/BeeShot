extends Area2D

# Player stats
export var speed = 400;
var life = 3;


# State
var can_fire = false;
export var play = true;

# Bound Screen
var screen_size;

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Vector2()
	if play:
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
		position.x = clamp(position.x, 0, screen_size.size.x - 32);
		position.y = clamp(position.y, 0, screen_size.size.y - 32);

