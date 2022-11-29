extends KinematicBody2D

var spin_time = 4.0

func _ready():
	pass
	
	
func _physics_process(_delta):
	if not $Tween.is_active():
		$Tween.interpolate_property(self, "rotation_degrees", 0, 360, spin_time, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		$Tween.start()


func _on_Area2D_body_entered(body):
	if body.name == "Player":
		body.die()
