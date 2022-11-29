extends Node

onready var SM = get_parent()
onready var player = get_node("../..")

func _ready():
	yield(player, "ready")

func start():
	player.set_animation("Falling")
	player.jump_power = Vector2.ZERO

func physics_process(_delta):
	if player.is_on_floor() and player.velocity.dot(Vector2.UP) < 0:
		player.velocity.y = 0
		SM.set_state("Idle")
	if player.is_on_ceiling():
		player.velocity.y = 0
	var input_vector = Vector2(Input.get_action_strength("right") - Input.get_action_strength("left"),1.0)
	player.set_direction(sign(input_vector.x))
	player.velocity += player.move_speed * input_vector + player.gravity
	player.move_and_slide(player.velocity, Vector2.UP)
