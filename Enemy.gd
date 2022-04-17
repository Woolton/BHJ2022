extends "res://char.gd"


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var BulletScene : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(health<=0):
		Die()


