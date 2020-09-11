extends KinematicBody2D

var vel = 250


func _ready():
	pass


func _process(delta):
	
	var dir = Vector2()
	if Input.is_action_pressed("right"):
		dir.x = 1
	if Input.is_action_pressed("left"):
		dir.x = -1
	if Input.is_action_pressed("down"):
		dir.y = 1
	if Input.is_action_pressed("up"):
		dir.y = -1
	
	# Movimento da nave em 4 direções
	move_and_slide(dir * vel)
	pass
