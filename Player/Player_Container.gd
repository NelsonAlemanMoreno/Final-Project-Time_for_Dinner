extends Node2D



var starting_position = Vector2(100,500)


func _ready():
	pass

func _physics_process(_delta):
	if not has_node("Player"):
		var player = Player.instance()
		player.position = starting_position
		player.name = "Player"
		add_child(player)
