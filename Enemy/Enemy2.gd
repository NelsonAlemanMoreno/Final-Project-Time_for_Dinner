extends KinematicBody2D

export var con_left = Vector2(0, 0)
export var con_right = Vector2(100, 0)
export var speed = 3

func _ready():
	pass
	
func _physics_process(_delta):
	if not $Tween.is_active():
		var con = con_left
		$Sprite.flip_h = true
		if position != con_right:
			con = con_right
			$Sprite.flip_h = false
		$Tween.interpolate_property(self, "position", position, con, speed, Tween.TRANS_EXPO, Tween.EASE_IN)
		$Tween.start()
		
func _on_Area2D_body_entered(body):
	if body.name == "Player":
		body.die()
