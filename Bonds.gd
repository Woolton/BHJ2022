extends Area2D


#this object is the controller for the containing area of the player

export var dimension_x : int #the length of the container <--get local pos
export var dimension_y : int #the height of the container <--get local pos
var center : int #center of the container
var dimensions = Vector2()

export var _player = preload("res://Player.tscn")

func RestrictPlayer(origin : int,dimensions): #the origin will usually be the player's current position
	#get player's position information
	
	_player.Limit_Movement(_player.position.x,_player.position.y,dimensions.x,dimensions.y)#call player's clamp function
	pass
# Called when the node enters the scene tree for the first time.
func _ready():
	dimensions = Vector2(dimension_x,dimension_y) #initializes the area size


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
