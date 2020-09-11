extends Area2D

var vel = 300

func _ready():
	pass


func _process(delta):
	position.x = position.x - vel * delta
	if position.x < 0:
		queue_free()
	pass
