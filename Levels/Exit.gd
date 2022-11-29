extends Area2D


func _ready():
	pass


func _on_Exit_body_entered(body):
	if body.name == "Player":
		var nextLevel = Global.levels+1
		var filePath = "res://Levels/Level"+str(nextLevel)+".tscn"
		if nextLevel < 6:
			var _s = get_tree().change_scene(filePath)
			Global.levels += 1
			var index = Global.levels-1
			Global.plus_score(time_to_score(Global.time))
			Global.time = Global.level_time[index]
		elif nextLevel == 6:
			pass

func time_to_score(t):
	var s = int(t * 0.75)
	return s
