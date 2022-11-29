extends Node

onready var SM = get_parent()
onready var player = get_node("../..")

func _ready():
	yield(player, "ready")

func start():
	player.set_animation("Moving")
	player.jump_power = Vector2.ZERO

func physics_process(_delta):
	if not player.is_on_floor():
		SM.set_state("Falling")
	if Input.is_action_pressed("jump"):
		SM.set_state("Moving_and_Jumping")
	if Input.is_action_pressed("left") or Input.is_action_pressed("right"):
		var input_vector = Vector2(Input.get_action_strength("right") - Input.get_action_strength("left"),1.0)
		player.set_direction(sign(input_vector.x))
		player.velocity += player.move_speed * input_vector
		player.move_and_slide(player.velocity, Vector2.UP)
	else:
		player.velocity = Vector2.ZERO
		SM.set_state("Idle")
