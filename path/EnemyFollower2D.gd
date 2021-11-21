extends PathFollow2D



export var runSpeed = 100

	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	set_offset(get_offset() + runSpeed * delta)
	if(unit_offset == 1):
		queue_free()
