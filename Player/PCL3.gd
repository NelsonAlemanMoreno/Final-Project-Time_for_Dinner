extends Node2D

onready var Player = load("res://Player/Player.tscn")
var starting_position = Vector2(60,50)

func _ready():
	pass

func _physics_process(_delta):
	if not has_node("Player"):
		var player = Player.instance()
		properties(player)
		add_child(player)


func properties(player):
	player.scale.x = 0.3
	player.scale.y = 0.3
	player.position = starting_position
	player.name = "Player"
	
	player.move_speed = 15
	player.max_move = 150

	player.jump_speed = 125
	player.max_jump = 500

	player.leap_speed = 125
	player.max_leap = 600
