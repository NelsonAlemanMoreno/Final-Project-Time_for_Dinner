extends Node2D

onready var Bullet = load("res://Enemy/Bullet.tscn")

var b_direction = Vector2.ZERO
var tip = Vector2(0, 0)

func _ready():
	if int(rotation) == 6: # 2*PI
		tip = Vector2(0, -48)
	elif int(rotation) == 3: # PI
		tip = Vector2(0, 48)
	elif int(rotation) == 4: # 3*PI/2
		tip = Vector2(-48, 0)
	elif int(rotation) == 1: # PI/2
		tip = Vector2(48, 0)
	b_direction = Vector2(0, -200)

func _on_Timer_timeout():
	var bullet = Bullet.instance()
	bullet.global_position = global_position + tip
	bullet.v = b_direction
	bullet.rotation = rotation
	get_tree().current_scene.add_child(bullet)
	$Fire.playing = true
