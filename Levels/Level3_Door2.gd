extends Area2D


func _ready():
	pass


func _on_Door2_body_entered(body):
	if body.name == "Player":
		body.global_position = Vector2(160, -1472)
		$Warp.playing = true
		yield ($Warp, "finished")
		$Warp.playing = false
