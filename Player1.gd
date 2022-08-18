extends KinematicBody2D

var direct = Vector2()
export(float) var velocity

func _physics_process(delta) -> void:
	
	direct.x =  Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	direct.y =  Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	print(delta)
	
	move_and_slide(direct * velocity)
