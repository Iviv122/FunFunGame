extends RigidBody2D
class_name Ball

@export var s : Start 

func _ready() -> void:
	s.start.connect(start)
	freeze = true

func start() -> void:
	freeze = false
