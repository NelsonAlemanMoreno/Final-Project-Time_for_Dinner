extends Area2D

export var value = 5

func _ready():
	pass

func _on_Coins_body_entered(body):
	if body.name == "Player":
		Global.plus_score(value)
		visible = false
		$Collect.playing = true
		yield ($Collect, "finished")
		queue_free()
