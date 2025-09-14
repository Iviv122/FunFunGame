extends Sprite2D 
class_name Fadeout


func fadeout() -> void:
	var tween = get_tree().create_tween()
	tween.tween_property(self,"modulate:a",0,0.2)

func fadein() -> void:
	var tween = get_tree().create_tween()
	tween.tween_property(self,"modulate:a",1,0.2)
