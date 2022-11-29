extends Camera2D

var player = null

func _process(_delta):
	player = get_node_or_null("/root/Game/Player_Container/Player")
	if player != null:
		position = player.position
