extends Node2D
class_name BallSpawn

@export var ex : PackedScene

func spawn() -> void:
	var ball : RigidBody2D = ex.instantiate()
	ball.global_position = global_position

