extends Area2D


var speed : int = 200

func start(pos, dir):
	rotation = dir
	position = pos
# Called when the node enters the scene tree for the first time.
func _process(delta):
	position += transform.x * speed * delta

const character = preload("res://char.gd")

func _on_Bullet_area_entered(area):
	var _char = area.get_parent() #gets the parent of the area2D, usually a Kinematic Body
	if _char is character:
		print(_char.name) #print name of node
		_char._on_Damage()
	else:
		pass
