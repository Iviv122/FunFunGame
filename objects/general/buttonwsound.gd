extends Button
class_name ButtonWithSound

func _ready():
	mouse_entered.connect(_hover)
	pressed.connect(clicked)

func _hover() -> void:
	get_tree().call_group("sfx","hover")
func clicked() -> void:
	get_tree().call_group("sfx","click")
