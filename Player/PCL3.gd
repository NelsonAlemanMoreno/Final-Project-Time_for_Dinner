extends Node2D

onready var Player = load("res://Player/Player.tscn")
var starting_position = Vector2(54,36)

func _ready():
	pass

func _physics_process(_delta):
	if not has_node("Player"):
		var player = Player.instance()
		player_properties(player)
		add_child(player)

func player_properties(player):
	
	player.scale.x = 0.5
	player.scale.y = 0.5
	player.position = starting_position
	player.name = "Player"
	
	player.gravity = Vector2(0, 20)
	
	player.move_speed = 15
	player.max_move = 200
	
	player.jump_speed = 150
	player.max_jump = 450

	player.leap_speed = 150
	player.max_leap = 450
