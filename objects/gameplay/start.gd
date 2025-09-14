extends Button
class_name Start 

signal start 

func _pressed() -> void:
    start.emit()