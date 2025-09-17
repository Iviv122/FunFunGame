extends ButtonWithSound
class_name Start 


func _pressed() -> void:
    get_tree().call_group("start_group","start")