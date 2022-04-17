extends "res://char.gd"


var velocity = Vector2()
var screensize = get_viewport_rect().size


func _ready():
	for i in range(gun_Count):
			var gun = gun_Scene.instance()
			gun.position = $Position2D.position
			gun.rotation = $Position2D.rotation
			add_child(gun)
		
func Get_Input(): #player inputs
	velocity = Vector2()
	if Input.is_action_pressed('Right'):
		velocity.x += 1
		print("right")
	if Input.is_action_pressed('Left'):
		velocity.x -= 1
	if Input.is_action_pressed('Down'):
		velocity.y += 1
	if Input.is_action_pressed('Up'):
		velocity.y -= 1
	velocity = velocity.normalized() * speed
	if Input.is_action_pressed("fire"):
		print("fired")
		emit_signal("shoot")
		yield(get_tree().create_timer(5.0), "timeout")
func Limit_Movement(origin_x: int,origin_y: int,limit_x: int,limit_y:int): #limit movement to range around origin
	position.x = clamp(position.x,origin_x,limit_x) #x limit
	position.y = clamp(position.y,origin_y,limit_y) #y limiy
func _physics_process(delta):
	Get_Input()
	#Limit_Movement(0,0,screensize.x,screensize.y) #gets viewport size, limits movement to that
	global_position.x = clamp(global_position.x,0,screensize.x)
	global_position.y = clamp(global_position.y,0,screensize.y)
	#Limit_Movement(fairySpace.x,fairySpace.y,fairySpace.x + width, fairySpace.y + height)
	#limits movement to a small box
	move_and_collide(velocity * delta)
	if(health<=0):
		Die()


