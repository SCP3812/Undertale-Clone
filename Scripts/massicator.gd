extends CharacterBody2D
@onready var sprite = $AnimatedSprite2D
@onready var tedk = get_node("../playerCharacter")
const SPEED = 1
var can_follow = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	sprite.play("default")
	if can_follow == true:
		var directionx = get_position().x - tedk.global_position.x
		var directiony = get_position().y - tedk.global_position.y
		velocity.x = directionx * SPEED
		velocity.y = directiony * SPEED
		print("wojak")
	elif can_follow == false:
		var directionx = tedk.global_position.x - get_position().x
		var directiony = tedk.global_position.y - get_position().y
		velocity.x = directionx * SPEED
		velocity.y = directiony * SPEED
	move_and_slide()

	

func _on_area_2d_body_entered(tedk):
	can_follow = false
	print("among us")
	


func _on_area_2d_body_exited(tedk):
	can_follow = true
	print("sus")
	
