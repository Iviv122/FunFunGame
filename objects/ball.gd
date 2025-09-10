extends RigidBody2D

@export var s : Start 

func _ready() -> void:
	s.start.connect(start)
	freeze = true

func start() -> void:
	freeze = false
