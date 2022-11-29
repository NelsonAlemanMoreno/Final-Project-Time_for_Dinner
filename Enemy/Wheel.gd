extends Area2D

export var con_left = Vector2(0, 0)
export var con_right = Vector2(0, 0)
export var speed = 3.0

func _ready():
	pass
	
func _physics_process(_delta):
	if not $Spin.is_active():
		$Spin.interpolate_property(self, "rotation_degrees", 0, 360, 3.0, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		$Spin.start()
	if not $Move.is_active():
		var con = con_left
		if position != con_right:
			con = con_right
		$Move.interpolate_property(self, "position", position, con, speed, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		$Move.start()


func _on_Wheel_body_entered(body):
	if body.name == "Player":
		body.die()
