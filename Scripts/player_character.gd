extends CharacterBody2D
@onready var tedk = $Tedk

const SPEED = 300.0


func _physics_process(delta: float) -> void:


	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var directionx = Input.get_axis("ui_left", "ui_right")
#	print(directionx)
	var directiony = Input.get_axis("ui_down", "ui_up")
	velocity.x = directionx * SPEED
	velocity.y = directiony * -SPEED
	if Input.is_action_just_pressed("ui_left") == true:
		tedk.set_frame(3)
	elif Input.is_action_just_pressed("ui_right") == true:
		tedk.set_frame(2)
	elif Input.is_action_just_pressed("ui_up") == true:
		tedk.set_frame(1)
	elif Input.is_action_just_pressed("ui_down") == true:
		tedk.set_frame(0)
	move_and_slide()
