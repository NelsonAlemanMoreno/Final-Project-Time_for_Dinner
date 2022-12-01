extends KinematicBody2D


func _ready():
	pass

func _physics_process(_delta):
	if not $Spin.is_active():
		$Spin.interpolate_property(self, "rotation_degrees", 0, 360, 2.5, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		$Spin.start()

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		body.die()
