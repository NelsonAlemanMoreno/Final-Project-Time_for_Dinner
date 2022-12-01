extends Node2D

onready var Enemy1 = load("res://Enemy/Enemy1.tscn")
onready var Turret = load("res://Enemy/Turret.tscn")

func _physics_process(_delta):
	if not has_node("Enemy1"):
		var enemy1 = Enemy1.instance()
		enemy1.name = "Enemy1"
		add_child(enemy1)
	
