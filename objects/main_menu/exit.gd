extends ButtonWithSound 
class_name ExitApp

func _pressed() -> void:
	get_tree().quit()