extends KinematicBody2D

export var v = Vector2.ZERO

func _ready():
	pass

func _physics_process(delta):
	position += v.rotated(rotation) * delta

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		body.die()
		queue_free()

func _on_Timer_timeout():
	queue_free()
