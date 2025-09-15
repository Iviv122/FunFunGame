extends RigidBody2D
class_name Ball

var canRemove = true 

func _ready() -> void:
	add_to_group("restart_group")
	add_to_group("start_group")
	freeze = true

func restart()->void:
	if canRemove:
		queue_free()


func start() -> void:
	freeze = false
