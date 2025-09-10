extends Button
class_name Reset 

func _pressed() -> void:
    get_tree().reload_current_scene()