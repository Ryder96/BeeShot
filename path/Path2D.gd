extends Path2D


var follower = preload("res://EnemyFollower2D.tscn")
var waspEnemy = preload("res://actors/Wasp.tscn")

export var numberOf = 3

func _ready():
	$SpawnTimer.start()
	
	
func _process(delta):
	pass
		
		


func _on_SpawnTimer_timeout():
	if (numberOf > 0):
		var newFollower = follower.instance()
		var mob = waspEnemy.instance()
		mob.rotate(-PI/2)
		newFollower.add_child(mob)
		add_child(newFollower)
		numberOf -= 1
		print(numberOf)
