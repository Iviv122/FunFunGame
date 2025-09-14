extends Button
class_name LoadScene 

@export var scene : String 

func _pressed() -> void:

	add_to_group("scene_manager")
	get_tree().call_group("scene_manager","loadMenu",scene)
