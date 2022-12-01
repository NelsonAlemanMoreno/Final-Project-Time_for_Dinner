extends Area2D


func _ready():
	pass


func _on_Acid_Wave_body_entered(body):
	if body.name == "Player":
		body.die()
