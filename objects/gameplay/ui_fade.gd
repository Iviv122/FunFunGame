extends Control
class_name UIFade

func _ready():
	add_to_group("end_group")

func end():
	var tween := get_tree().create_tween()
	for i in get_children():
		if i is Button:
			i.disabled = true
		if i is LineEdit:
			i.editable = false
	tween.tween_property(self, "modulate:a", 0, 0.2)
