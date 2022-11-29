extends Node

onready var SM = get_parent()
onready var player = get_node("../..")

func _ready():
	yield(player, "ready")

func physics_process(_delta):
	if not player.is_on_floor():
		SM.set_state("Falling")

	player.jump_power.y = clamp(player.jump_power.y - player.jump_speed, -player.max_jump, 0)
	if Input.is_action_just_released("jump"):
		player.velocity += player.jump_power
		SM.set_state("Falling")
	elif Input.is_action_pressed("left") or Input.is_action_pressed("right"):
		player.set_animation("Moving")
		var input_vector = Vector2(Input.get_action_strength("right") - Input.get_action_strength("left"),0)
		player.set_direction(sign(input_vector.x))
		player.velocity += player.move_speed * input_vector
		player.move_and_slide(player.velocity, Vector2.UP)
	else:
		player.velocity.x = 0
		SM.set_state("Jumping")
