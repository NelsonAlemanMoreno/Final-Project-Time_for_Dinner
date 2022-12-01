extends Node2D

onready var Turret = load("res://Enemy/Turret.tscn")
onready var Enemy1 = load("res://Enemy/Enemy1.tscn")



func _physics_process(_delta):
	if not has_node("Turret"):
		var turret = Turret.instance()
		turret.name = "Turret"
		turret.rotation = (3*PI)/2
		turret.position = Vector2(992, -1824)
		add_child(turret)
	if not has_node("Turret2"):
		var turret2 = Turret.instance()
		turret2.name = "Turret2"
		turret2.rotation = (3*PI)/2
		turret2.position = Vector2(992, -1760)
		add_child(turret2)
	if not has_node("Turret3"):
		var turret3 = Turret.instance()
		turret3.name = "Turret3"
		turret3.rotation = PI/2
		turret3.position = Vector2(96, -608)
		add_child(turret3)


func _on_Timer_timeout():
	if not has_node("Enemy1"):
		var enemy1 = Enemy1.instance()
		enemy1.name = "Enemy1"
		add_child(enemy1)
