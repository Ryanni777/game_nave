extends CanvasLayer

var pre_inimigo = preload("res://scenes/inimigo.tscn")
var tempo = 0

func _ready():
	pass 


func _process(delta):
	tempo = tempo + delta
	if tempo > 1:
		spawn_inimigo()
		tempo = 0
	pass


func spawn_inimigo():
	var i = pre_inimigo.instance()
	i.position = Vector2(1024, rand_range(62, 538))
	add_child(i)
