extends KinematicBody2D
# this script contains base functions for a character,
# only inherit from this function

signal shoot

export var health: int = 0 #character health
export var speed : int #char speed
export var gun_Scene : PackedScene #gun scene
export var gun_Count: int = 0 #quantity of guns

func _on_Damage(): #executed when a damage signal is recieved
	health = health - 1 #have to assign output of this operator
	print("ouch")
func Die(): #executed when health is < 0
		print("I am dead")
func _ready():
	pass # Replace with function body.
