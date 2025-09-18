extends GridContainer
class_name Levels

var kids = 0

func get_kids():
	kids = get_child_count()

func _ready():
	get_kids()
	for i in range(0,LevelProgress.data.get("level")):
		var b : Button = get_child(i)
		b.disabled = false 
