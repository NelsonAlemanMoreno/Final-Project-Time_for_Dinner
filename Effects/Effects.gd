extends Node2D

onready var Water = load("res://Effects/Sewage.tscn")
var positions = [Vector2(210, -5), Vector2(270, -5), Vector2(230, -125), Vector2(510, -165), Vector2(690, -25), Vector2(750, -25),
Vector2(970, -5), Vector2(1070, -5), Vector2(1330, 25), Vector2(1490, 5), Vector2(1510, 5), Vector2(1630, 105)]

func _ready():
	pass

func _on_Spawn_timeout():
	for i in range(0, len(positions)):
		var water = Water.instance()
		water.position = positions[i]
		water.scale.x = 0.3
		water.scale.y = 0.3
		get_tree().current_scene.add_child(water)
