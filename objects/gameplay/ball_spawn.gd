extends Node2D
class_name BallSpawn

@export var ex : PackedScene

func _ready():
	add_to_group("restart_group")
	spawn()

func restart():
	spawn()

func spawn() -> void:
	var ball : RigidBody2D = ex.instantiate()
	ball.global_position = global_position
	get_tree().root.add_child(ball)
