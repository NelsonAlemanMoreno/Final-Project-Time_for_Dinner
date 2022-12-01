extends Sprite

func _ready():
	if not $Tween.is_active():
		$Tween.interpolate_property(self, "position:y", position.y, self.position.y+75, 1.5, Tween.TRANS_EXPO, Tween.EASE_IN)
		$Tween.start()


func _on_Duration_timeout():
	queue_free()


func _on_Area2D_body_entered(_body):
	queue_free()
