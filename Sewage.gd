extends Sprite

onready var water = 22

func _ready():
	if not $Tween.is_active():
		$Tween.interpolate_property(self, "position.y", position.y, 0, 25, Tween.TRANS_EXPO, Tween.EASE_IN)
		$Tween.start()


func _on_Duration_timeout():
	queue_free()
