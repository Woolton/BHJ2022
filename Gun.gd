extends Position2D


export var bullet_Scene : PackedScene

func _on_Player_shoot():
	var bullet = bullet_Scene.instance()
	get_tree().root.add_child(bullet) #adds bullet to global sceen root
	bullet.start(global_position,rotation)
	
