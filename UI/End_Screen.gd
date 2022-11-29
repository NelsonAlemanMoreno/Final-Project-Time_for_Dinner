extends CanvasLayer


func _ready():
	$Control/Score.text = "Final Score: " + str(Global.score) + "."
	$Control/Death.text = "Total Deaths: " + str(Global.deaths) + "."
	$Control/Level.text = "Furthest Level: " + str(Global.levels) + "."


func _on_Restart_pressed():
	Global.reset()
	var _scene = get_tree().change_scene("res://Levels/Level1.tscn")


func _on_Quit_pressed():
	get_tree().quit()
