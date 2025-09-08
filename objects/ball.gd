extends RigidBody2D

@export var s : Starter

func _ready() -> void:
	s.start.connect(start)
	freeze = true

func start() -> void:
	freeze = false
