extends Button
class_name Starter

signal start 

func _pressed() -> void:
    start.emit()