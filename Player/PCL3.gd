extends Node2D

onready var Player = load("res://Player/Player.tscn")
var starting_position = Vector2(200,200)
var first_time = true
var door2 = true

func _ready():
	pass

func _physics_process(_delta):
	if not has_node("Player"):
		var player = Player.instance()
		player.position = starting_position
		player.name = "Player"
		add_child(player)


func _on_Door1_body_entered(body):
	if body.name == "Player" and first_time:
		starting_position = Vector2(3488, -768)
		Global.time += 30
		first_time = false


func _on_Door2_body_entered(body):
	if body.name == "Player" and door2:
		starting_position = Vector2(160, -1472)
		Global.time += 20
		door2 = false
