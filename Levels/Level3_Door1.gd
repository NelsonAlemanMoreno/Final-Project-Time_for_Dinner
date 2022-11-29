extends Area2D


func _ready():
	pass


func _on_Door1_body_entered(body):
	if body.name == "Player":
		body.global_position = Vector2(3488, -768)
		$Warp.playing = true
		yield ($Warp, "finished")
		$Warp.playing = false
