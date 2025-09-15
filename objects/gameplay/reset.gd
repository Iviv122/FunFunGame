extends Button
class_name Reset 

func _pressed() -> void:
    get_tree().call_group("restart_group","restart")