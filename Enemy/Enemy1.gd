extends KinematicBody2D

var player = null
var nav = null
var pos = [Vector2(3300, -200), Vector2(1488,488), Vector2(0, 0), Vector2(968, 528), Vector2(104, 80)]

var speed = 0
var s_list = [125, 80, 120, 95, 100]

func _ready():
	var lev = Global.levels
	position = pos[lev-1]
	speed = s_list[lev-1]


func _physics_process(_delta):
	nav = get_node_or_null("/root/Game/Nav2D")
	player = get_node_or_null("/root/Game/Player_Container/Player")
	if nav != null and player != null:
		var points = nav.get_simple_path(global_position, player.global_position, true)
		if points.size() > 1:
			var target = points[1] - global_position
			var s = speed
			if target.length() > s:
				s = target.length()
			if abs(s) < 1:
				s = 0
			var dir = target.normalized()
			if dir.x < 0:
				$Sprite.flip_h = true
			else:
				$Sprite.flip_h = false
			var _v = move_and_slide(dir*s, Vector2.ZERO)

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		body.die()
		queue_free()
