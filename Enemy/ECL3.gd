extends Node2D

onready var Turret = load("res://Enemy/Turret.tscn")

func _physics_process(_delta):
	if not has_node("Turret"):
		var turret = Turret.instance()
		turret.name = "Turret"
		turret.rotation = (3*PI)/2
		turret.position = Vector2(2200, 216)
		add_child(turret)
	if not has_node("Turret2"):
		var turret2 = Turret.instance()
		turret2.name = "Turret2"
		turret2.rotation = (3*PI)/2
		turret2.position = Vector2(3736, -936)
		add_child(turret2)
	if not has_node("Turret3"):
		var turret3 = Turret.instance()
		turret3.name = "Turret3"
		turret3.rotation = PI/2
		turret3.position = Vector2(344, -808)
		add_child(turret3)
	if not has_node("Turret4"):
		var turret4 = Turret.instance()
		turret4.name = "Turret4"
		turret4.rotation = 2*PI
		turret4.position = Vector2(728, -1384)
		add_child(turret4)
	if not has_node("Turret5"):
		var turret5 = Turret.instance()
		turret5.name = "Turret5"
		turret5.rotation = (3*PI)/2
		turret5.position = Vector2(3672, -1512)
		add_child(turret5)

