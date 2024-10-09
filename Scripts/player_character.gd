extends CharacterBody2D


const SPEED = 300.0


func _physics_process(delta: float) -> void:


	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var directionx = Input.get_axis("ui_left", "ui_right")
#	print(directionx)
	var directiony = Input.get_axis("ui_down", "ui_up")
	velocity.x = directionx * -SPEED
	velocity.y = directiony * SPEED
	move_and_slide()
